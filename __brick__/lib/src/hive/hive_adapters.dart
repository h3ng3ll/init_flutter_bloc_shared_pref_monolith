
import 'package:hive_ce/hive.dart';

import 'dart:typed_data';

import '../models/achievement/achievement.dart';
import '../models/achievement_progress/achievement_progress.dart';
import '../models/badge/badge.dart';
import '../models/heart/heart.dart';
import '../models/heart_collection/heart_collection.dart';
import '../models/heart_history/heart_history.dart';
import '../models/nav_tutorial/nav_tutorial.dart';
{{#use_profile}}
import '../models/profile/profile.dart';
{{/use_profile}}
{{#use_settings}}
import '../models/settings/settings.dart';
{{/use_settings}}
import '../models/user_achievement/user_achievement.dart';


part 'hive_adapters.g.dart';

@GenerateAdapters([
  {{#use_profile}}
  AdapterSpec<Profile>(),
  {{/use_profile}}
  AdapterSpec<HeartCollection>(),
  AdapterSpec<Heart>(),
  AdapterSpec<NavTutorial>(),
  AdapterSpec<HeartHistory>(),
  AdapterSpec<UserAchievement>(),
  AdapterSpec<Badge>(),
  AdapterSpec<Achievement>(),
  AdapterSpec<AchievementProgress>(),
  {{#use_settings}}
  AdapterSpec<Settings>(),
  {{/use_settings}}

])
/// HiveAdapters fuse
class HiveAdapters {}
