import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/extensions.dart';

class ThemeChooseCard extends StatelessWidget {
  const ThemeChooseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ThemeCard(title: 'System', icon: Assets.settings),
        ThemeCard(title: 'Light', icon: Assets.sun),
        ThemeCard(title: 'Dark', icon: Assets.moon, isSelected: true),
      ],
    );
  }
}

class ThemeCard extends StatelessWidget {
  final String title;
  final String icon;
  final bool isSelected;

  const ThemeCard({
    super.key,
    required this.title,
    required this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.onPrimary : colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              SvgPicture.asset(icon, height: 24),
              Text(
                title,
                style: isSelected ? textThemeEx.bodySmallReverse : textThemeEx.bodySmallEx,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
