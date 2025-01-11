import 'package:flutter/material.dart';

import '../../../configs/components/product_card.dart';
import '../../../configs/theme.dart';

class CategoryDetailsTabBar extends StatefulWidget {
  const CategoryDetailsTabBar({super.key});

  @override
  State<CategoryDetailsTabBar> createState() => _CategoryDetailsTabBarState();
}

class _CategoryDetailsTabBarState extends State<CategoryDetailsTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 15, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        TabBar(
          unselectedLabelStyle: textThemeEx.labelMediumWO,
          controller: _tabController,
          padding: const EdgeInsets.all(16),
          indicator: const BoxDecoration(),
          onTap: (value) => setState(() {}),
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelPadding: const EdgeInsets.only(right: 8),
          tabs: List<Widget>.generate(
            15,
            (i) => DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.white.withValues(
                  alpha: _tabController.index == i ? 1 : 0.1,
                ),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: AppColors.white.withValues(alpha: 0.02),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text('Pizza'),
              ),
            ),
          ).toList(),
        ),
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: List.generate(
              15,
              (index) => GridView.builder(
                itemCount: 9,
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 14,
                  mainAxisExtent: 290,
                ),
                itemBuilder: (context, index) => ProductCard(
                  backgroundColor: colorScheme.primaryContainer,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
