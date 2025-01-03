import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/extensions.dart';
import '../../../configs/routes/routes.dart';

class SavedDataCards extends StatelessWidget {
  const SavedDataCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SavedDataCard(
          title: 'Halanlarym',
          icon: Assets.heart,
          onTap: () {},
        ),
        SavedDataCard(
          title: 'Sargytlarym',
          icon: Assets.cubeBox,
          onTap: () => Navigator.pushNamed(
            context,
            NavigationRouteNames.myOrders,
          ),
        ),
        SavedDataCard(
          title: 'Salgylarym',
          icon: Assets.mapLocation,
          onTap: () => Navigator.pushNamed(
            context,
            NavigationRouteNames.myAddresses,
          ),
        ),
      ],
    );
  }
}

class SavedDataCard extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;

  const SavedDataCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Expanded(
      child: Material(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 21,
              children: [
                SvgPicture.asset(icon, height: 24),
                Text(
                  title,
                  style: context.textThemeEx.bodySmallEx,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
