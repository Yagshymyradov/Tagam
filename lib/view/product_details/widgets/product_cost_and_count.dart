import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';

class ProductCostAndCount extends StatelessWidget {
  const ProductCostAndCount({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
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
            DecoratedBox(
              decoration: BoxDecoration(
                color: colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(33),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  spacing: 10,
                  children: [
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        fixedSize: const Size(32, 32),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      icon: const Icon(Icons.remove, size: 18),
                    ),
                    Text(
                      '2',
                      style: textTheme.headlineSmall,
                    ),
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        fixedSize: const Size(32, 32),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      icon: const Icon(Icons.add, size: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
