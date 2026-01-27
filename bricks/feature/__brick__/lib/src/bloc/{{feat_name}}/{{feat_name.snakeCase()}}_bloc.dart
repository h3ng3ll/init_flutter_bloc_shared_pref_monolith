import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../repositories/{{feat_name.snakeCase()}}_local_repository.dart';

part '{{feat_name.snakeCase()}}_bloc.freezed.dart';
part '{{feat_name.snakeCase()}}_event.dart';
part '{{feat_name.snakeCase()}}_state.dart';

class {{feat_name.pascalCase()}}Bloc extends Bloc<{{feat_name.pascalCase()}}Event, {{feat_name.pascalCase()}}State> {

final {{feat_name.pascalCase()}}LocalRepository _{{feat_name.pascalCase()}}LocalRepository =
{{feat_name.pascalCase()}}LocalRepository.instance;

{{feat_name.pascalCase()}}Bloc() : super(const {{feat_name.pascalCase()}}State()) {
    on<_Load>(_load);
  }


    void _load(event, emit) async {
      try {
        emit(
          state.copyWith(
            status: {{feat_name.pascalCase()}}Status.loading,
          ),
        );
        // final data = event.e;
           /// Todo:

        emit(
          state.copyWith(
            status: {{feat_name.pascalCase()}}Status.initial,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            status: {{feat_name.pascalCase()}}Status.failed,
            errorMessage: e.toString(),
          ),
        );
        rethrow;
      }
    }
}
