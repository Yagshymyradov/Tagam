import 'package:flutter/material.dart';

import 'app_colors.dart';

final class AppTextTheme {
  const AppTextTheme._();

  static TextTheme darkTextTheme = const TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      color: AppColors.white,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      color: AppColors.white,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
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
    bodyLarge: TextStyle(
      fontSize: 18,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: AppColors.midnightGrape,
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(
      fontSize: 10,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      fontSize: 24,
      color: AppColors.white,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: 22,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontSize: 20,
      color: AppColors.white,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontFamily: 'ObjectSans',
      fontSize: 36,
      color: AppColors.white,
      fontWeight: FontWeight.w900,
    ),
    displaySmall: TextStyle(
      fontSize: 30,
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),
  );
}
