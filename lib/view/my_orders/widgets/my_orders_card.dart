import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import 'widgets.dart';

class MyOrdersCard extends StatelessWidget {
  const MyOrdersCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.primaryContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'December',
                style: textThemeEx.headlineSmallX,
                children: [
                  TextSpan(
                    text: ' 2024',
                    style: textThemeEx.headlineSmallXWO,
                  ),
                ],
              ),
            ),
            ...List.generate(
              3,
              (index) => Column(
                children: [
                  if (index != 0) ...[
                    const Divider(),
                    const SizedBox(height: 16),
                  ],
                  const MyOrderTile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
