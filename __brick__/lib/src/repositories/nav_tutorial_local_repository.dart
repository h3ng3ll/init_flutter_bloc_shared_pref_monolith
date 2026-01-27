import '../databases/hive_database.dart';
import '../models/nav_tutorial/nav_tutorial.dart';

class NavTutorialLocalRepository {
  final HiveDatabase _hiveDatabase = HiveDatabase.instance;

  final _key = 'nav_tutorial6';

  NavTutorialLocalRepository._();

  static final instance = NavTutorialLocalRepository._();

  Future<void> update(
    NavTutorial navTutorial,
  ) async {
    final box = await _hiveDatabase.getBox<NavTutorial>(
      _key,
    );
    await box.put(
      _key,
      navTutorial,
    );
  }

  Future<NavTutorial?> get() async {
    final box = await _hiveDatabase.getBox<NavTutorial>(
      _key,
    );
    final navTutorial = box.get(
      _key,
    );
    return navTutorial;
  }
}
