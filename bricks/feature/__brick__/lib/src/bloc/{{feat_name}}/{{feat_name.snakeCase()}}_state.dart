part of '{{feat_name.snakeCase()}}_bloc.dart';

enum {{feat_name.pascalCase()}}Status {
  initial,
  loading,
  failed,
}

@freezed
sealed class {{feat_name.pascalCase()}}State with _${{feat_name.pascalCase()}}State {
  const factory {{feat_name.pascalCase()}}State({

    @Default({{feat_name.pascalCase()}}Status.initial) {{feat_name.pascalCase()}}Status status,
    @Default('') String errorMessage,
  }) = _{{feat_name.pascalCase()}}State;
}
