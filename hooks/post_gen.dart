import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final flagFile = File(
    '.mason_initialized',
  );
  flagFile.writeAsStringSync(
    'initialized: true',
  );
}
