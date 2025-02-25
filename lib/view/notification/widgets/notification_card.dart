import 'package:flutter/material.dart';

import '../../../configs/assets.dart';
import '../../../configs/extensions.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;
    final textTheme = Theme.of(context).textTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              spacing: 8,
              children: [
                SvgPicture.asset(Assets.tLogo),
                Expanded(
                  child: Text(
                    'TAGAM',
                    style: textThemeEx.labelSmallX,
                  ),
                ),
                Text(
                  'suwagt',
                  style: textThemeEx.labelSmallX,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              spacing: 14,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New recipe!',
                        style: textTheme.titleSmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: textThemeEx.bodySmallEx,
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/image.png',
                    width: 56,
                    height: 56,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
