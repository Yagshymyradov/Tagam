import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/theme.dart';

class RestaurantContactInfo extends StatelessWidget {
  const RestaurantContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.primaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            child: Text(
              'Contact informations',
              style: textThemeEx.bodyLargeEx,
            ),
          ),
          const _ContactInfoItem(
            title: '+48 564 78 45 65',
            icon: Assets.call,
          ),
          const _ContactInfoItem(
            title: 'Ashgabat, Berkararlyk etrap,',
            icon: Assets.location,
          ),
          const _ContactInfoItem(
            title: '@lacassa_ashgabat',
            icon: Assets.instagram,
          ),
          const _ContactInfoItem(
            title: 'www.lacasa.com.tm',
            icon: Assets.internet,
          ),
        ],
      ),
    );
  }
}

class _ContactInfoItem extends StatelessWidget {
  final String title;
  final String icon;

  const _ContactInfoItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: colorScheme.primaryContainer,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          tileColor: AppColors.white.withValues(alpha: 0.04),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            title,
            style: textTheme.labelMedium,
          ),
          leading: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.white.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(9),
              child: SvgPicture.asset(icon),
            ),
          ),
          trailing: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 17.6, sigmaX: 17.6),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                  child: SvgPicture.asset(Assets.open),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
