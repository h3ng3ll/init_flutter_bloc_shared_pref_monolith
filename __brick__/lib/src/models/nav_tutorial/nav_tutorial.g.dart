// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nav_tutorial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NavTutorial _$NavTutorialFromJson(Map<String, dynamic> json) => _NavTutorial(
  hasShownTutorial: json['hasShownTutorial'] as bool? ?? false,
  hasCompletedFullOnboard: json['hasCompletedFullOnboard'] as bool? ?? false,
  hasCompletedOnboard: json['hasCompletedOnboard'] as bool? ?? false,
);

Map<String, dynamic> _$NavTutorialToJson(_NavTutorial instance) =>
    <String, dynamic>{
      'hasShownTutorial': instance.hasShownTutorial,
      'hasCompletedFullOnboard': instance.hasCompletedFullOnboard,
      'hasCompletedOnboard': instance.hasCompletedOnboard,
    };
