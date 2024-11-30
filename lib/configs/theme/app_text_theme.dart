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
    labelLarge: TextStyle(
      fontSize: 16,
      color: AppColors.mediumGray,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: AppColors.midnightGrape,
      fontWeight: FontWeight.w400,
    ),
  );
}
