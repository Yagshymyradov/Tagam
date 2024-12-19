import 'package:flutter/material.dart';

class ProductSimilarDishesText extends StatelessWidget {
  const ProductSimilarDishesText({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      'Similar dishes',
      style: textTheme.headlineMedium,
    );
  }
}
