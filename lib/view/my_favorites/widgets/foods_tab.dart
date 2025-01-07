import 'package:flutter/material.dart';

import '../../../configs/components/product_card.dart';

class FoodsTab extends StatelessWidget {
  const FoodsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
