import 'package:flutter/material.dart';
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
    final textTheme = Theme.of(context).textTheme;

    return RefreshIndicator(
      backgroundColor: AppColors.white,
      onRefresh: () async => value.refresh(),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: BannerCard()),
          //NOTE: for future implementation
          // const SliverToBoxAdapter(child: SectionTitle(title: 'All categories')),
          // const SliverToBoxAdapter(child: CategoriesCard()),
          // const SliverToBoxAdapter(child: SizedBox(height: 10)),
          // const SliverToBoxAdapter(child: SectionTitle(title: 'Top restaurants')),
          // TopRestaurants(model: value.topRestaurantsResponse.data),
          // const SliverToBoxAdapter(child: SizedBox(height: 10)),
          // const SliverToBoxAdapter(child: SectionTitle(title: 'New foods')),
          // const SliverToBoxAdapter(child: SizedBox(height: 10)),
          // const SliverToBoxAdapter(child: NewFoodsCard()),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Restaurants',
                style: textTheme.headlineSmall,
              ),
            ),
          ),
          const Restaurants(),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }
}
