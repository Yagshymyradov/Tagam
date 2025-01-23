import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../configs/theme.dart';
import '../../../view_model/view_model.dart';

enum SortType {
  defaultSort,
  recentlyAdded,
  fromCheaper,
  fromExpensive,
}

extension SortTypeEx on SortType {
  String get title {
    switch (this) {
      case SortType.defaultSort:
        return 'Default Sort';
      case SortType.recentlyAdded:
        return 'Recently Added';
      case SortType.fromCheaper:
        return 'From Cheapest';
      case SortType.fromExpensive:
        return 'From Most Expensive';
    }
  }
}

class SortTile extends StatelessWidget {
  const SortTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final value = context.read<RestaurantDetailsViewModel>();
    final sortType = context.select((RestaurantDetailsViewModel value) => value.sortType);

    return Material(
      color: colorScheme.primaryContainer,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Filters', style: textThemeEx.headlineSmallX),
            const SizedBox(height: 4),
            ...SortType.values.map(
              (e) => ListTile(
                onTap: () => value.setSortType(e),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                tileColor: sortType == e
                    ? AppColors.charlestonGreen
                    : AppColors.white.withValues(alpha: 0.04),
                title: Text(
                  e.title,
                  style: sortType == e ? textThemeEx.labelLargeX : textTheme.labelLarge,
                ),
                trailing: Checkbox(
                  value: sortType == e,
                  activeColor: AppColors.white,
                  onChanged: (v) => value.setSortType(e),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
