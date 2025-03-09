import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomTabBar extends StatelessWidget {
  final TabController? controller;
  final List<String> tabsTitle;

  const CustomTabBar({
    super.key,
    this.controller,
    required this.tabsTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(62),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.black.withValues(alpha: 0.2),
            border: Border.all(
              color: AppColors.white.withValues(alpha: 0.06),
            ),
          ),
          child: TabBar(
            controller: controller,
            indicatorPadding: const EdgeInsets.all(4),
            labelPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 11,
            ),
            tabs: tabsTitle.map(Text.new).toList(growable: false),
          ),
        ),
      ),
    );
  }
}
