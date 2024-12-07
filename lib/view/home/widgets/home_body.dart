import 'package:flutter/material.dart';
import '../../../configs/components/components.dart';
import '../../../view_model/view_model.dart';
import 'widgets.dart';

class HomeBody extends StatelessWidget {
  final HomeViewModel value;

  const HomeBody({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: BannerCard()),
        SliverToBoxAdapter(child: SectionTitle(title: 'All categories')),
        SliverToBoxAdapter(child: CategoriesCard()),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(child: SectionTitle(title: 'Top restaurants')),
        SliverToBoxAdapter(child: RestaurantsCard(isTop: true)),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(child: SectionTitle(title: 'New foods')),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(child: NewFoodsCard()),
        SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(child: SectionTitle(title: 'Restaurants')),
        SliverToBoxAdapter(child: RestaurantsCard()),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
      ],
    );
  }
}
