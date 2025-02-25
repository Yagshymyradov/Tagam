import 'package:flutter/material.dart';

import '../../../configs/assets.dart';
import '../../../configs/theme.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        const SizedBox(height: 48),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                AppColors.oceanBreeze,
                AppColors.midnightTeal,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: const EdgeInsets.all(17.5),
            child: SvgPicture.asset(
              Assets.user,
              height: 35,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Maksat Myradow',
          style: textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          '+993 65 85 58 73',
          style: textThemeEx.titleMediumWO,
        ),
      ],
    );
  }
}
