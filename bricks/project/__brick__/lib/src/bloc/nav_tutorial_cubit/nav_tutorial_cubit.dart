import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/nav_tutorial/nav_tutorial.dart';
import '../../repositories/nav_tutorial_local_repository.dart';

part 'nav_tutorial_state.dart';

part 'nav_tutorial_cubit.freezed.dart';

class NavTutorialCubit extends Cubit<NavTutorialState> {
  final NavTutorialLocalRepository _navTutorialLocalRepository =
      NavTutorialLocalRepository.instance;

  NavTutorialCubit()
    : super(
        NavTutorialState(
          navTutorial: NavTutorial(),
        ),
      );

  Future<void> fetch() async {
    final navTutorial = await _navTutorialLocalRepository.get();
    if (navTutorial == null) return;
    emit(
      state.copyWith(
        navTutorial: navTutorial,
      ),
    );
  }

  Future<void> memorize({
    bool? hasShownTutorial,
    bool? hasCompleteOnboard,
  }) async {
    final navTutorial = state.navTutorial.copyWith(
      hasShownTutorial: hasShownTutorial ?? state.navTutorial.hasShownTutorial,
      hasCompletedOnboard:
          hasCompleteOnboard ?? state.navTutorial.hasCompletedOnboard,
    );

    await _navTutorialLocalRepository.update(
      navTutorial,
    );

    emit(
      state.copyWith(
        navTutorial: navTutorial,
      ),
    );
  }
}
