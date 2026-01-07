import 'package:flutter/material.dart';
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
          count: '0',
          onTap: () => Navigator.pushNamed(
            context,
            NavigationRouteNames.myFavorites,
          ),
        ),
        SavedDataCard(
          title: 'Sargytlarym',
          icon: Assets.cubeBox,
          count: '0',
          onTap: () {},
          // Navigator.pushNamed(
          //   context,
          //   NavigationRouteNames.myOrders,
          // ),
        ),
      ],
    );
  }
}

class SavedDataCard extends StatelessWidget {
  final String title;
  final String icon;
  final String count;
  final VoidCallback onTap;

  const SavedDataCard({
    super.key,
    required this.title,
    required this.icon,
    required this.count,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(icon, height: 24),
                    Text(
                      '$count sany',
                      style: context.textThemeEx.bodySmallEx,
                    ),
                  ],
                ),
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
