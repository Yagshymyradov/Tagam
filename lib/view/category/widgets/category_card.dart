import 'package:flutter/material.dart';

import '../../../configs/components/optimized_image.dart';
import '../../../configs/extensions.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: ColoredBox(
        color: colorScheme.primaryContainer,
        child: Stack(
          children: [
            OptimizedImage(
              imageUrl: '',
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: colorScheme.primaryContainer,
                width: double.infinity,
              ),
              placeholderBuilder: (context) => Container(
                color: colorScheme.primaryContainer,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: 14,
              left: 14,
              child: Text(
                'Salad',
                style: textThemeEx.headlineMediumEx,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
