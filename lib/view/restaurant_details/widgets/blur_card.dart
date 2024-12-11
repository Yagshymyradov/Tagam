import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/theme/colors.dart';

class BlurCard extends StatelessWidget {
  final String icon;
  final String title;

  const BlurCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AppColors.white.withOpacity(0.2),
            border: Border.all(
              color: AppColors.white.withOpacity(0.06),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: 4),
                Text(
                  title,
                  style: textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
