import 'package:flutter/material.dart';

import '../../../configs/assets.dart';
import '../../../configs/routes/routes.dart';
import '../../../configs/theme.dart';
import 'choose_language.dart';

class SettingsCards extends StatelessWidget {
  const SettingsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        SettingsTile(
          title: 'Dil',
          icon: Assets.language,
          isLanguage: true,
          onTap: () => showDialog<void>(
            context: context,
            builder: (context) => const AlertLanguageDialog(),
          ),
        ),
        SettingsTile(
          onTap: () => Navigator.pushNamed(
            context,
            NavigationRouteNames.contactUs,
          ),
          title: 'Habarlaşmak',
          icon: Assets.message,
        ),
        const SettingsTile(title: 'Policy Provicy', icon: Assets.checkShield),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final String icon;
  final bool? isLanguage;
  final VoidCallback? onTap;

  const SettingsTile({
    super.key,
    required this.title,
    required this.icon,
    this.isLanguage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      onTap: onTap,
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
