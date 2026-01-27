
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';


part 'nav_tutorial.freezed.dart';

part 'nav_tutorial.g.dart';


@freezed
sealed class NavTutorial extends HiveObject with _$NavTutorial {
   NavTutorial._();

   factory NavTutorial({

    @Default(false) bool hasShownTutorial,
    @Default(false) bool hasCompletedFullOnboard,
    @Default(false) bool hasCompletedOnboard,
  }) = _NavTutorial;

  factory NavTutorial.fromJson(Map<String, dynamic> json) =>
      _$NavTutorialFromJson(json);
}
