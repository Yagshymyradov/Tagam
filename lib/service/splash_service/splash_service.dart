import 'package:flutter/cupertino.dart';

import '../../configs/routes/routes.dart';
import '../../main.dart';
import '../../view_model/view_model.dart';
import '../service.dart';

final class SplashService {
  void checkState(BuildContext context) {
    Future<void>.delayed(const Duration(seconds: 2)).then(
      (value) async {
        final prefsService = getIt<OnboardingViewModel>().prefsService;
        final onboardingShowed = prefsService.getBool(PreferencesKeys.onboardingShowed);
        if (onboardingShowed ?? false) {
          return Navigator.pushNamedAndRemoveUntil(
            context,
            NavigationRouteNames.mainScreen,
            (route) => false,
          );
        } else {
          return Navigator.pushNamedAndRemoveUntil(
            context,
            NavigationRouteNames.onboarding,
            (route) => false,
          );
        }
      },
    );
  }
}
