import 'package:hive_ce_flutter/adapters.dart';

import '../hive/hive_registrar.g.dart';

/// Access Layer to Hive .
/// contains a register of  opened boxes for
/// already opened boxes
class HiveDatabase {
  HiveDatabase._();

  static final instance = HiveDatabase._();

  final Map<String, Box<dynamic>> _openedBoxes = {};

  /// initialize [Hive]
  Future<void> init() async {
    await Hive.initFlutter();

    /// place here other adapters for enums
    Hive.registerAdapters();
  }

  /// get box for generic type [E]
  /// with specified [name] argument which
  /// is the key of [_openedBoxes]
  /// if it contains that one it'll return
  /// the value otherwise call [Hive] to
  /// extract data.
  Future<Box<E>> getBox<E>(String name) async {
    final existing = _openedBoxes[name];
    if (existing != null) {
      // check type dynamically
      if (existing is Box<E>) {
        return Hive.box(name);
      }
      // if type not match - close and open new one
      await existing.close();
    }

    final Box<E> box = await Hive.openBox<E>(name);
    _openedBoxes[name] = box;
    return box;
  }

  /// close container by [name]
  Future<Box<E>> disposeBox<E>(String name) async {
    final Box<E> box = _openedBoxes[name]! as Box<E>;
    await box.close();
    _openedBoxes.remove(name);
    return box;
  }

  /// close every opened container
  Future<void> closeAll() async {
    for (final box in _openedBoxes.values) {
      await box.close();
    }
    _openedBoxes.clear();
  }
}
