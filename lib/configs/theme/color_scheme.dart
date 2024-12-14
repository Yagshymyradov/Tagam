import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract final class AppColorScheme {
  AppColorScheme._();

  static final ColorScheme colorSchemeDark = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.darkGray,
    onPrimary: AppColors.white,
    secondary: AppColors.white.withValues(alpha: 0.12),
    onSecondary: AppColors.white,
    error: Colors.red,
    onError: AppColors.white,
    surface: AppColors.black,
    onSurface: AppColors.white,
    scrim: AppColors.lightPink,
  );
}
