import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/extensions.dart';

class SavedDataCards extends StatelessWidget {
  const SavedDataCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SavedDataCard(title: 'Halanlarym', icon: Assets.heart),
        SavedDataCard(title: 'Sargytlarym', icon: Assets.cubeBox),
        SavedDataCard(title: 'Salgylarym', icon: Assets.mapLocation),
      ],
    );
  }
}

class SavedDataCard extends StatelessWidget {
  final String title;
  final String icon;

  const SavedDataCard({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(14),
        ),
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
    );
  }
}
