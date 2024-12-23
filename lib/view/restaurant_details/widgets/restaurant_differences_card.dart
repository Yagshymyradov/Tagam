import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';

class RestaurantDifferencesCard extends StatelessWidget {
  const RestaurantDifferencesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.primaryContainer,
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _DifferencesCardsItem(
              title: 'Sandwich',
              differences: ['Sandwich', 'Fish', 'Burger', 'Pizza'],
            ),
            _DifferencesCardsItem(
              title: 'Kitchen',
              differences: ['Turkish', 'French'],
            ),
            _DifferencesCardsItem(
              title: 'Peculiarities',
              differences: ['Veranda'],
            ),
          ],
        ),
      ),
    );
  }
}

class _DifferencesCardsItem extends StatelessWidget {
  final String title;
  final List<String> differences;

  const _DifferencesCardsItem({
    super.key,
    required this.title,
    required this.differences,
  });

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final textTheme = Theme.of(context).textTheme;

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 6,
      runSpacing: 10,
      children: [
        Text('$title :', style: textThemeEx.labelMediumWO),
        ...differences.map(
          (e) => DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white.withValues(alpha: 0.06),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
              child: Text(e, style: textTheme.labelMedium),
            ),
          ),
        ),
      ],
    );
  }
}
