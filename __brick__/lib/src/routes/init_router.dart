import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


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
