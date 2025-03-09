import 'package:flutter/material.dart';

import '../../../configs/assets.dart';
import '../../../configs/theme.dart';
import '../../../view_model/view_model.dart';

class RestaurantContactInfo extends StatelessWidget {
  const RestaurantContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final detailsModel = context.read<RestaurantDetailsViewModel>();
    final data = detailsModel.detailsResponseState.data;
    final textThemeEx = context.textThemeEx;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: DecoratedBox(
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
            ...?data?.phoneNumbers.map(
              (e) => _ContactInfoItem(
                onTap: () => detailsModel.makePhoneCall(e),
                title: e,
                icon: Assets.call,
              ),
            ),
            _ContactInfoItem(
              title: data?.address ?? '',
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
      ),
    );
  }
}

class _ContactInfoItem extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback? onTap;

  const _ContactInfoItem({
    required this.title,
    required this.icon,
    this.onTap,
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
          onTap: onTap,
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
    );
  }
}
