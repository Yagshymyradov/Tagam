import 'package:flutter/material.dart';

import '../../../configs/components/counter_card.dart';
import '../../../configs/extensions.dart';

class ProductCostAndCount extends StatelessWidget {
  const ProductCostAndCount({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '60 manat',
              style: textThemeEx.priceLarge,
            ),
            const CounterCard(),
          ],
        ),
      ),
    );
  }
}
