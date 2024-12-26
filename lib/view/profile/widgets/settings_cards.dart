import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/theme.dart';

class SettingsCards extends StatelessWidget {
  const SettingsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 8,
      children: [
        SettingsTile(title: 'Dil', icon: Assets.language, isLanguage: true),
        SettingsTile(title: 'Habarlaşmak', icon: Assets.message),
        SettingsTile(title: 'Policy Provicy', icon: Assets.checkShield),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final String icon;
  final bool? isLanguage;

  const SettingsTile({
    super.key,
    required this.title,
    required this.icon,
    this.isLanguage,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      contentPadding: const EdgeInsets.only(left: 12, right: 16),
      tileColor: colorScheme.primaryContainer,
      title: Text(
        title,
        style: context.textThemeEx.bodySmallEx,
      ),
      leading: SvgPicture.asset(icon),
      trailing: Row(
        spacing: 6,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isLanguage == true)
            Text(
              'Türkmen',
              style: context.textThemeEx.labelMediumWO,
            ),
          SvgPicture.asset(Assets.chevronRight),
        ],
      ),
    );
  }
}
