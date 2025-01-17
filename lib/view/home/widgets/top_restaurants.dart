import 'package:flutter/material.dart';

import '../../../configs/components/components.dart';
import '../../../model/restaurants/restaurants_model.dart';

class TopRestaurants extends StatelessWidget {
  final List<RestaurantsModel>? model;

  const TopRestaurants({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: model?.length ?? 0,
      itemBuilder: (context, index) => RestaurantsCard(
        restaurant: model?[index],
        isTop: true,
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
