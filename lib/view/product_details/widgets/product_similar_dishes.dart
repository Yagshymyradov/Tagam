import 'package:flutter/material.dart';

import '../../../configs/components/components.dart';

class ProductSimilarDishes extends StatelessWidget {
  const ProductSimilarDishes({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 14,
        mainAxisExtent: 285,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => const ProductCard(),
    );
  }
}
