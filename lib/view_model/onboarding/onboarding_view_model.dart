import 'dart:async';

import 'package:flutter/material.dart';

import '../../configs/routes/routes.dart';
import '../../service/preferences.dart';
import '../../service/preferences_keys.dart';

class OnboardingViewModel with ChangeNotifier {
  AppPrefsService prefsService;

  OnboardingViewModel({required this.prefsService});

  PageController controller = PageController();

  int get dotsLength => 3;

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  double dotsSpace(int index) {
    return index == dotsLength - 1 || _currentIndex == index ? 0 : 10;
  }

  void onPageChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void onBackButtonTap() {
    controller.previousPage(
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeInOut,
    );
  }

  void onContinueButtonTap(BuildContext context) {
    if (_currentIndex < 2) {
      controller.animateToPage(
        _currentIndex + 1,
        duration: const Duration(milliseconds: 320),
        curve: Curves.easeInCirc,
      );
    } else {
      try {
        Navigator.pushReplacementNamed(
          context,
          NavigationRouteNames.chooseCity,
        );
      } catch (e) {
        //ignore
      }
    }
  }

  Future<void> onSkipButtonTap(BuildContext context) async {
    await prefsService.setBool(PreferencesKeys.onboardingShowed, true);

    // ignore: unawaited_futures
    Navigator.pushNamedAndRemoveUntil(
      context,
      NavigationRouteNames.mainScreen,
      (route) => false,
    );
  }
}
