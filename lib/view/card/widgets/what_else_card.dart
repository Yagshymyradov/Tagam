import 'package:flutter/material.dart';

import '../../../configs/components/product_card.dart';
import '../../../configs/extensions.dart';
import '../../../configs/theme/app_colors.dart';
import 'widgets.dart';

class WhatElseCard extends StatelessWidget {
  const WhatElseCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.primaryContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What else?',
              style: textThemeEx.headlineSmallX,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 10,
                mainAxisExtent: 285,
              ),
              itemBuilder: (context, index) => ProductCard(
                backgroundColor: AppColors.white.withValues(alpha: 0.08),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
