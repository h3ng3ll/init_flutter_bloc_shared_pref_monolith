part of '{{feat_name.snakeCase()}}_bloc.dart';

@freezed
class {{feat_name.pascalCase()}}Event with _${{feat_name.pascalCase()}}Event {
  const factory {{feat_name.pascalCase()}}Event.load() = _Load;
}
