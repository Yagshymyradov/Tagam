import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../configs/components/components.dart';
import '../../../configs/components/indicators.dart';
import '../../../model/restaurants/restaurants_model.dart';
import '../../../view_model/view_model.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.read<HomeViewModel>();
    return PagedSliverList<int?, RestaurantsModel>.separated(
      pagingController: homeViewModel.pagingController,
      builderDelegate: PagedChildBuilderDelegate<RestaurantsModel>(
        itemBuilder: (context, item, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RestaurantsCard(restaurant: item),
        ),
        firstPageErrorIndicatorBuilder: (context) => ErrorIndicator(
          onTap: () => homeViewModel.pagingController.retryLastFailedRequest(),
        ),
        newPageErrorIndicatorBuilder: (context) => ErrorIndicator(
          onTap: () => homeViewModel.pagingController.retryLastFailedRequest(),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
