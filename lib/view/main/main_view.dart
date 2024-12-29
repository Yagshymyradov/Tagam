import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../configs/assets.dart';
import '../../configs/routes/routes.dart';
import '../../configs/theme/app_colors.dart';
import '../view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentPage = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const Text('Categories'),
    const Text('Cashback Prize'),
    const SizedBox(),
    const ProfileView(),
  ];

  void onTapNavButton(int value) {
    if (value == 3) {
      Navigator.pushNamed(context, NavigationRouteNames.card).whenComplete(
        () {
          _currentPage = 0;
          setState(() {
            //no-op
          });
        },
      );
    }
    _currentPage = value;
    setState(() {
      //no-op
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeIconColor = ColorFilter.mode(
      AppColors.white.withValues(alpha: 0.5),
      BlendMode.srcIn,
    );
    return Scaffold(
      extendBody: true,
      body: _pages[_currentPage],
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
              onTap: onTapNavButton,
              currentIndex: _currentPage,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    Assets.home,
                    colorFilter: activeIconColor,
                  ),
                  label: 'Home',
                  activeIcon: SvgPicture.asset(Assets.home),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    Assets.categories,
                    colorFilter: activeIconColor,
                  ),
                  label: 'Category',
                  activeIcon: SvgPicture.asset(Assets.categories),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    Assets.cashbackPrize,
                    colorFilter: activeIconColor,
                  ),
                  label: 'Gift',
                  activeIcon: SvgPicture.asset(Assets.cashbackPrize),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    Assets.shoppingCart,
                    colorFilter: activeIconColor,
                  ),
                  label: 'Card',
                  activeIcon: SvgPicture.asset(Assets.shoppingCart),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    Assets.profile,
                    colorFilter: activeIconColor,
                  ),
                  label: 'Profile',
                  activeIcon: SvgPicture.asset(Assets.profile),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
