import 'package:flutter/material.dart';

import 'colors.dart';

final class AppTextTheme {
  const AppTextTheme._();

  static TextTheme darkTextTheme = const TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      color: AppColors.white,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w600),
    labelLarge: TextStyle(
      fontSize: 16,
      color: AppColors.mediumGray,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: AppColors.midnightGrape,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 10,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontSize: 20,
      color: AppColors.white,
      fontWeight: FontWeight.w700,
    ),
  );
}
