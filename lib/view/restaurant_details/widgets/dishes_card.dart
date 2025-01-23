import 'package:flutter/material.dart';

import '../../../configs/components/optimized_image.dart';
import '../../../configs/theme.dart';
import '../../../model/model.dart';

class DishesCard extends StatelessWidget {
  final List<RestaurantMenusModel>? menus;

  const DishesCard({super.key, this.menus});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dishes', style: textThemeEx.headlineSmallX),
            Wrap(
              spacing: 10,
              runSpacing: 20,
              children: [
                ...?menus?.map(
                      (e) => Column(
                    spacing: 8,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColors.white.withValues(alpha: 0.12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: OptimizedImage(
                              imageUrl: e.image ?? '',
                              height: 74,
                              width: 74,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) => const SizedBox(),
                            ),
                          ),
                        ),
                      ),
                      Text(e.name ?? '', style: textThemeEx.labelLargeX),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}