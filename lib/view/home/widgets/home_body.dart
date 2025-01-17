import 'package:flutter/material.dart';
import '../../../configs/components/components.dart';
import '../../../configs/theme.dart';
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
    return RefreshIndicator(
      backgroundColor: AppColors.white,
      onRefresh: () async => value.refresh(),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: BannerCard()),
          const SliverToBoxAdapter(child: SectionTitle(title: 'All categories')),
          const SliverToBoxAdapter(child: CategoriesCard()),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SliverToBoxAdapter(child: SectionTitle(title: 'Top restaurants')),
          TopRestaurants(model: value.topRestaurantsResponse.data),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SliverToBoxAdapter(child: SectionTitle(title: 'New foods')),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SliverToBoxAdapter(child: NewFoodsCard()),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SliverToBoxAdapter(child: SectionTitle(title: 'Restaurants')),
          Restaurants(model: value.restaurantsResponse.data),
          const SliverToBoxAdapter(child: SizedBox(height: 110)),
        ],
      ),
    );
  }
}
