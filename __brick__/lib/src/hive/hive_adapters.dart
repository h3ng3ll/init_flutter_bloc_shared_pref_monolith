
import 'package:hive_ce/hive.dart';

import 'dart:typed_data';

{{#use_profile}}
import '../models/profile/profile.dart';
{{/use_profile}}
{{#use_settings}}
import '../models/settings/settings.dart';
{{/use_settings}}

part 'hive_adapters.g.dart';

@GenerateAdapters([
  {{#use_profile}}
  AdapterSpec<Profile>(),
  {{/use_profile}}
  {{#use_settings}}
  AdapterSpec<Settings>(),
  {{/use_settings}}

])
/// HiveAdapters fuse
class HiveAdapters {}
