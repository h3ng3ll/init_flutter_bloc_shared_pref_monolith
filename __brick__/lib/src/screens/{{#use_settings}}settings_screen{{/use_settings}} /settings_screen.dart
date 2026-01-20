import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';


import '../../../bloc/profile_bloc/profile_bloc.dart';
import '../../../bloc/settings_bloc/settings_bloc.dart';


import '../../../resources/colors/app_colors.dart';
import '../../../resources/localization/app_localizations.dart';
import '../../../resources/text/app_typography_theme.dart';
import '../../../routes/app_routes_paths.dart';
import '../../../services/navigation_lock.dart';



import '../../../widgets/custom_widgets/custom_app_bar.dart';
import '../../../widgets/horizontal_padding.dart';



class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isNavigating = false;

  void onPrivacyPolicy() {
    if (isNavigating) return;
    isNavigating = true;
    context
        .pushNamed(
          AppRoutesPaths.privacyPolicy,
        )
        .whenComplete(
          () => isNavigating = false,
        );
  }

  void onTermsOfUse() {
    if (!NavigationLock.tryLock()) return;
    context.pushNamed(
      AppRoutesPaths.termsOfUse,
    );
    Future.microtask(
      NavigationLock.unlock,
    );
  }

  void onEditProfile() {
    if (!NavigationLock.tryLock()) return;
    context.pushNamed(
      AppRoutesPaths.profile,
    );
    Future.microtask(
      NavigationLock.unlock,
    );
  }

  @override
  Widget build(BuildContext context) {
    final lo = AppLocalizations.of(context)!;
    final textTheme = AppTypographyTheme.of(context);
    final titleStyle = textTheme.r24.copyWith(
      color: AppColors.black,
    );
    final profileBloc = context.watch<ProfileBloc>();
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return HorizontalPadding(
            child: SingleChildScrollView(
              child: Column(
                children: []
              ),
            ),
          );
        },
      ),
    );
  }
}
