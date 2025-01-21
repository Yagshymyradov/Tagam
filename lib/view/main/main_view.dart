import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../configs/assets.dart';
import '../../configs/theme/app_colors.dart';
import '../../view_model/main_screen/main_screen_view_model.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenViewModel>(
      builder: (context, value, child) => Scaffold(
        extendBody: true,
        body: value.pages[value.currentScreen],
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.black.withValues(alpha: 0.04),
                ),
              ),
              child: BottomNavigationBar(
                onTap: (index) => value.onTapNavButton(context, index),
                currentIndex: value.currentScreen,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Assets.home,
                      colorFilter: value.activeIconColor,
                    ),
                    label: 'Home',
                    activeIcon: SvgPicture.asset(Assets.home),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Assets.categories,
                      colorFilter: value.activeIconColor,
                    ),
                    label: 'Category',
                    activeIcon: SvgPicture.asset(Assets.categories),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Assets.cashbackPrize,
                      colorFilter: value.activeIconColor,
                    ),
                    label: 'Gift',
                    activeIcon: SvgPicture.asset(Assets.cashbackPrize),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Assets.shoppingCart,
                      colorFilter: value.activeIconColor,
                    ),
                    label: 'Card',
                    activeIcon: SvgPicture.asset(Assets.shoppingCart),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Assets.profile,
                      colorFilter: value.activeIconColor,
                    ),
                    label: 'Profile',
                    activeIcon: SvgPicture.asset(Assets.profile),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
