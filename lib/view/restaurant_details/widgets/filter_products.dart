import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/theme.dart';
import '../../../model/restaurants/restaurants_model.dart';
import 'widgets.dart';

class FilterProducts extends StatelessWidget {
  final List<RestaurantMenusModel>? menus;

  const FilterProducts({super.key, this.menus});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    return DraggableScrollableSheet(
      expand: false,
      snap: true,
      maxChildSize: 0.9,
      builder: (context, scrollController) => Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 39,
                height: 4,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: 0,
            right: 0,
            bottom: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.all(8),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 24),
                      Text('Filters', style: textThemeEx.headlineSmallX),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        icon: SvgPicture.asset(Assets.close),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Wrap(
                    runSpacing: 8,
                    spacing: 8,
                    children: [
                      _FilterCard(title: 'Free delivery', icon: Assets.track),
                      _FilterCard(title: 'New', icon: Assets.hot),
                      _FilterCard(title: 'Top', icon: Assets.top),
                      _FilterCard(title: 'Sale Dishes', icon: Assets.sale),
                    ],
                  ),
                  const SizedBox(height: 8),
                  DishesCard(menus: menus),
                  const SizedBox(height: 8),
                  const SortTile(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterCard extends StatelessWidget {
  final String title;
  final String icon;

  const _FilterCard({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;

    return ClipRRect(
      borderRadius: BorderRadius.circular(23),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: ColoredBox(
          color: AppColors.white.withValues(alpha: 0.1),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(13, 8, 14, 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                SvgPicture.asset(
                  icon,
                  height: 20,
                ),
                Text(
                  title,
                  style: textThemeEx.labelLargeX,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
