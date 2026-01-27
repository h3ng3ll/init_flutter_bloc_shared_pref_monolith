import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/nav_tutorial_cubit/nav_tutorial_cubit.dart';
import '../../resources/app_images.dart';
import '../../routes/app_routes_paths.dart';
import '../../widgets/build_background.dart';
import '../../widgets/horizontal_padding.dart';
import 'widgets/build_loading_progress.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void onFinishLoading() {
    // context.goNamed(
    //   AppRoutesPaths.onBoard,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return BuildBackground(
      child: Scaffold(
        body: BlocListener<NavTutorialCubit, NavTutorialState>(
          listener: (context, state) {
            if(state.navTutorial.hasCompletedOnboard){
              // context.goNamed(
              //   AppRoutesPaths.home,
              // );
            }
          },
          child: HorizontalPadding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    AppImages.splashBg,
                  ),
                ),
                Gap(95.0),
                HorizontalPadding(
                  child: BuildLoadingProgress(
                    onCompleted: onFinishLoading,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
