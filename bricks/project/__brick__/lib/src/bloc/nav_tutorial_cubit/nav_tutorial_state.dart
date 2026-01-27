part of 'nav_tutorial_cubit.dart';


@freezed
sealed class NavTutorialState with _$NavTutorialState {
  const factory NavTutorialState({
    required NavTutorial navTutorial,

  }) = _NavTutorialState;
}
