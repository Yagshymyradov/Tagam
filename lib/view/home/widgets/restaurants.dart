import 'package:flutter/material.dart';

import '../../../configs/components/components.dart';
import '../../../model/home/home_model.dart';

class Restaurants extends StatelessWidget {
  final List<AllRestaurantsModel>? model;

  const Restaurants({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 10,
      itemBuilder: (context, index) => RestaurantsCard(
        restaurant: model?[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
