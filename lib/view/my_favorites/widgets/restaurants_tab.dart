import 'package:flutter/material.dart';

import '../../../configs/components/restaurants_card.dart';

class RestaurantsTab extends StatelessWidget {
  const RestaurantsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      itemCount: 10,
      itemBuilder: (context, index) => const RestaurantsCard(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
