import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../configs/assets.dart';
import '../../../configs/extensions.dart';
import '../../../configs/routes/routes.dart';
import '../../../configs/theme/app_colors.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(14, 14, 16, 14),
            child: Row(
              children: [
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
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(Assets.user),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Maksat Myradow',
                        style: textTheme.headlineSmall,
                      ),
                      Text(
                        '+993 65 85 58 73',
                        style: textThemeEx.labelMediumWO,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    NavigationRouteNames.editProfile,
                  ),
                  icon: SvgPicture.asset(Assets.pen),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
