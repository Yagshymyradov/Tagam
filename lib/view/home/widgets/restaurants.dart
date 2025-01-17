import 'package:flutter/material.dart';

import '../../../configs/components/components.dart';
import '../../../model/restaurants/restaurants_model.dart';

class Restaurants extends StatelessWidget {
  final List<RestaurantsModel>? model;

  const Restaurants({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: model?.length ?? 0,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: RestaurantsCard(
          restaurant: model?[index],
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
