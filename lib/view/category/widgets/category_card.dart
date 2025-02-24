import 'package:flutter/material.dart';

import '../../../configs/components/optimized_image.dart';
import '../../../configs/extensions.dart';
import '../../../configs/routes/routes.dart';
import '../../../model/model.dart';

class CategoryCard extends StatelessWidget {
  final RestaurantMenusModel? menus;

  const CategoryCard({
    super.key,
    required this.menus,
  });

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      borderRadius: BorderRadius.circular(14),
      color: colorScheme.primaryContainer,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => Navigator.pushNamed(
            context,
            NavigationRouteNames.categoryDetails,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 6, top: 15, right: 6),
            child: Column(
              children: [
                Text(
                  menus?.name ?? '',
                  style: textThemeEx.headlineMediumEx,
                ),
                const SizedBox(height: 4),
                OptimizedImage(
                  imageUrl: menus?.image ?? '',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const SizedBox(
                    width: double.infinity,
                  ),
                  placeholderBuilder: (context) => const SizedBox(
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
