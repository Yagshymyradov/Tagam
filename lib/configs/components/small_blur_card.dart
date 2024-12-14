import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_colors.dart';

class SmallBlurCard extends StatelessWidget {
  final String icon;
  final String title;

  const SmallBlurCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.white.withOpacity(0.12),
            border: Border.all(
              color: AppColors.white.withOpacity(0.06),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: 4),
                Text(
                  title,
                  style: textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
