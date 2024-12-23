import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/components/components.dart';
import '../../../configs/theme/app_colors.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({super.key});

  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        TabBar.secondary(
          labelStyle: textTheme.titleMedium,
          unselectedLabelStyle: textTheme.titleMedium,
          indicator: const BoxDecoration(),
          onTap: (value) => setState(() {}),
          controller: _tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelPadding: const EdgeInsets.only(right: 8),
          padding: const EdgeInsets.fromLTRB(16, 0 , 16, 16),
          tabs: List<Widget>.generate(
            5,
            (i) => DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.white.withValues(
                    alpha: _tabController.index == i ? 1 : 0.02,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.home, height: 24),
                    const SizedBox(width: 6),
                    const Text('Pizza'),
                  ],
                ),
              ),
            ),
          ).toList(),
        ),
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: List.generate(
              5,
              (e) => GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                itemBuilder: (context, index) => const ProductCard(),
                itemCount: 100,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 300,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
