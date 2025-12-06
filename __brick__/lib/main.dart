import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'src/bloc/app_observer.dart';
import 'src/bloc/dairy_bloc/dairy_bloc.dart';
import 'src/bloc/habit_bloc/habit_bloc.dart';
import 'src/bloc/moods_bloc/moods_bloc.dart';
import 'src/bloc/nav_tutorial_cubit/nav_tutorial_cubit.dart';
import 'src/bloc/profile_bloc/profile_bloc.dart';
import 'src/bloc/settings_bloc/settings_bloc.dart';
import 'src/bloc/task_bloc/task_bloc.dart';
import 'src/resources/localization/app_locale.dart';
import 'src/resources/app_theme.dart';
import 'src/resources/localization/app_localizations.dart';
import 'src/routes/app_routes_paths.dart';
import 'src/routes/init_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /// register global observer for debug convenient
  if (kDebugMode) {
    Bloc.observer = AppObserver.instance();
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter router;

  @override
  void initState() {
    router = initRouter(
      initialRoute: AppRoutesPaths.splash,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (_) => TaskBloc()
        //     ..add(
        //       TaskEvent.fetch(),
        //     ),
        // ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: AppThemeData.light,
        debugShowCheckedModeBanner: false,
        scrollBehavior: CustomCustomScrollBehavior(),
        supportedLocales: AppLocale.supportedLocales,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate,
        ],
        routerConfig: router,
      ),
    );
  }
}
