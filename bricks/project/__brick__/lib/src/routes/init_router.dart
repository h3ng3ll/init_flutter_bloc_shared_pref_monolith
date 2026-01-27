import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/settings_screen/settings_screen.dart';
import 'app_routes_paths.dart';

final GlobalKey<NavigatorState> rootKey = GlobalKey<NavigatorState>();
// final GlobalKey<NavigatorState> homeBottomBarKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> bottomBarKey = GlobalKey<NavigatorState>();

GoRouter initRouter({String? initialRoute}) => GoRouter(
  redirect: (BuildContext context, GoRouterState state) {
    return null;
  },
  initialLocation: initialRoute,
  navigatorKey: rootKey,
  routes: <RouteBase>[
    // GoRoute(
    //   path: AppRoutesPaths.splash,
    //   name: AppRoutesPaths.splash,
    //   builder: (context, state) {
    //     return const SplashScreen();
    //   },
    // ),

    {{#use_profile}}
    GoRoute(
      path: AppRoutesPaths.profile,
      name: AppRoutesPaths.profile,
      builder: (context, state) {
        return const ProfileScreen();
      },
    ),
    {{/use_profile}}
   {{#use_settings}}
    GoRoute(
      path: AppRoutesPaths.settings,
      name: AppRoutesPaths.settings,
      builder: (context, state) {
        return const SettingsScreen();
      },
    ),
    {{/use_settings}}

    // StatefulShellRoute.indexedStack(
    //   builder: (context, state, child) {
    //     return BuildBottomBar(
    //       key: bottomBarKey,
    //       navigationShell: child,
    //     );
    //   },
    //   branches: [
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: AppRoutesPaths.home,
    //           name: AppRoutesPaths.home,
    //           builder: (context, state) {
    //             return const HomeScreen();
    //           },
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
  ],
);
