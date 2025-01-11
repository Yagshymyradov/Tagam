import 'package:flutter/material.dart';

import '../../../configs/components/optimized_image.dart';
import '../../../configs/extensions.dart';
import '../../../configs/routes/routes.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      borderRadius: BorderRadius.circular(14),
      color: colorScheme.primaryContainer,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () => Navigator.pushNamed(
          context,
          NavigationRouteNames.categoryDetails,
        ),
        child: Stack(
          children: [
            OptimizedImage(
              imageUrl: '',
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const SizedBox(
                width: double.infinity,
              ),
              placeholderBuilder: (context) => const SizedBox(
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
