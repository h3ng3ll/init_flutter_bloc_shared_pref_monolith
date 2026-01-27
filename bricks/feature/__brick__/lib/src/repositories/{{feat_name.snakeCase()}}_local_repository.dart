import '../databases/hive_database.dart';
import '../models/{{feat_name.lowerCase()}}/{{feat_name.lowerCase()}}.dart';

class {{feat_name.pascalCase()}}LocalRepository {
  final HiveDatabase _hiveDatabase = HiveDatabase.instance;

  final _key = '{{feat_name.lowerCase()}}';

  {{feat_name.pascalCase()}}LocalRepository._();

  static final instance = {{feat_name.pascalCase()}}LocalRepository._();

  Future<void> update(
    {{feat_name.pascalCase()}}  {{feat_name.pascalCase()}},
  ) async {
    final box = await _hiveDatabase.getBox<{{feat_name.pascalCase()}}>(
      _key,
    );

    await box.put(
      {{feat_name.pascalCase()}}.day.toString(),
      {{feat_name.pascalCase()}},
    );
  }

  Future<List<{{feat_name.pascalCase()}}>?> get() async {
    final box = await _hiveDatabase.getBox<{{feat_name.pascalCase()}}>(
      _key,
    );

    return box.values.toList();
  }
}
