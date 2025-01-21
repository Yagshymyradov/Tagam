import 'package:flutter/material.dart';

import '../../configs/routes/routes.dart';
import '../../configs/theme.dart';
import '../../view/view.dart';

class MainScreenViewModel extends ChangeNotifier {
  int _currentScreen = 0;

  int get currentScreen => _currentScreen;

  final List<Widget> pages = [
    const HomeView(),
    const CategoryView(),
    const Text('Cashback Prize'),
    const SizedBox(),
    const ProfileView(),
  ];

  final activeIconColor = ColorFilter.mode(
    AppColors.white.withValues(alpha: 0.5),
    BlendMode.srcIn,
  );

  void onTapNavButton(BuildContext context, int value) {
    if (value == 3) {
      Navigator.pushNamed(context, NavigationRouteNames.card).whenComplete(
        () {
          _currentScreen = 0;
          notifyListeners();
        },
      );
    }
    _currentScreen = value;
    notifyListeners();
  }
}
