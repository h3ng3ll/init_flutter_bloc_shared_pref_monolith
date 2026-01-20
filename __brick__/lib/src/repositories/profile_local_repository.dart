

import '../databases/hive_database.dart';
import '../models/profile/profile.dart';

class ProfileLocalRepository {
  final HiveDatabase _hiveDatabase = HiveDatabase.instance;

  final _key = 'profile';

  ProfileLocalRepository._();

  static final instance = ProfileLocalRepository._();

  Future<void> update(
    Profile profile,
  ) async {

    final box = await _hiveDatabase.getBox<Profile>(
      _key,
    );

    await box.put(
      _key,
      profile,
    );
  }

  Future<Profile?> get() async {
    final box = await _hiveDatabase.getBox<Profile>(
      _key,
    );
    final profile = box.get(
      _key,
    );
    return profile;
  }
}
