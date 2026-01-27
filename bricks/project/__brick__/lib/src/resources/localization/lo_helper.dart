


import '../../routes/init_router.dart';
import 'app_localizations.dart';

AppLocalizations get tr {
  final context = rootKey.currentContext;
  assert(context != null, 'Navigator context is null');
  return AppLocalizations.of(context!)!;
}