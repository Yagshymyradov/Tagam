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
    final value = context.read<RestaurantDetailsViewModel>();
    final sortType = context.select((RestaurantDetailsViewModel value) => value.sortType);

    return Column(
      spacing: 8,
      children: SortType.values
          .map(
            (e) => Material(
              child: ListTile(
                onTap: () => value.setSortType(e),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                tileColor: sortType == e ? AppColors.charlestonGreen : colorScheme.primaryContainer,
                title: Text(
                  e.title,
                  style: textThemeEx.labelLargeX,
                ),
                trailing: Checkbox(
                  value: sortType == e,
                  activeColor: AppColors.white,
                  onChanged: (v) => value.setSortType(e),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
