import 'package:flutter/material.dart';

import '../../configs/theme.dart';
import 'widgets/widgets.dart';

class MyFavoritesView extends StatelessWidget {
  const MyFavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          titleSpacing: 6,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            style: IconButton.styleFrom(
              backgroundColor: Colors.transparent,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Halanlarym',
            style: textThemeEx.headlineLargeEx,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.white,
                    border: Border.all(
                      color: AppColors.black.withValues(alpha: 0.08),
                      width: 0.5,
                    ),
                  ),
                  indicatorPadding: const EdgeInsets.all(6),
                  labelPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  tabs: const [
                    Text('Naharlar'),
                    Text('Restoranlar'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            FoodsTab(),
            RestaurantsTab(),
          ],
        ),
      ),
    );
  }
}
