import 'package:flutter/material.dart';

import '../../configs/assets.dart';
import '../../view_model/view_model.dart';

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
        body: value.pages[value.currentScreen],
        bottomNavigationBar: BottomNavigationBar(
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
            //NOTE: for future implementation
            // BottomNavigationBarItem(
            //   icon: SvgPicture.asset(
            //     Assets.categories,
            //     colorFilter: value.activeIconColor,
            //   ),
            //   label: 'Category',
            //   activeIcon: SvgPicture.asset(Assets.categories),
            // ),
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
    );
  }
}
