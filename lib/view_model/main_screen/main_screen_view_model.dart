import 'package:flutter/material.dart';

import '../../configs/theme.dart';
import '../../view/view.dart';

class MainScreenViewModel extends ChangeNotifier {
  int _currentScreen = 0;

  int get currentScreen => _currentScreen;

  final List<Widget> pages = [
    const HomeView(),
    //NOTE: for future implementation
    // const CategoryView(),
    const Text('Cashback Prize'),
    const CardView(),
    const ProfileView(),
  ];

  final activeIconColor = ColorFilter.mode(
    AppColors.white.withValues(alpha: 0.5),
    BlendMode.srcIn,
  );

  void onTapNavButton(BuildContext context, int value) {
    _currentScreen = value;
    notifyListeners();
  }
}
