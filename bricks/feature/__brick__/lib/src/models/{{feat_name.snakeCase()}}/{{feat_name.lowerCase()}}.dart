
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';


part '{{feat_name.snakeCase()}}.freezed.dart';

part '{{feat_name.snakeCase()}}.g.dart';


@freezed
sealed class {{feat_name.pascalCase()}} extends HiveObject with _${{feat_name.pascalCase()}} {
  {{feat_name.pascalCase()}}._();

  factory {{feat_name.pascalCase()}}({
    required DateTime day,
    @Default(false) isCheckToday,
  }) = _{{feat_name.pascalCase()}};

  factory {{feat_name.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      _${{feat_name.pascalCase()}}FromJson(json);
}
