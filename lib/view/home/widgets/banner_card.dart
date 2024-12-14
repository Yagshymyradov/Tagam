import 'package:flutter/material.dart';

import '../../../configs/theme/app_colors.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: const ColoredBox(
              color: AppColors.mediumGray,
              child: SizedBox(
                width: double.infinity,
                height: 160,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 3,
                ),
                child: Text(
                  '3/4',
                  style: textTheme.bodySmall,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
