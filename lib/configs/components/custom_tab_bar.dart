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
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.darkGray,
          borderRadius: BorderRadius.circular(14),
        ),
        child: TabBar(
          controller: controller,
          indicatorPadding: const EdgeInsets.all(4),
          labelPadding: const EdgeInsets.all(16),
          tabs: tabsTitle.map(Text.new).toList(growable: false),
        ),
      ),
    );
  }
}
