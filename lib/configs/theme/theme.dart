import 'package:flutter/material.dart';

import 'app_text_theme.dart';
import 'colors.dart';
import 'text_style_extension.dart';

final class AppTheme {
  AppTheme._();

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: AppTextTheme.darkTextTheme,
    extensions: const [textStyleDark],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.black.withOpacity(0.2),
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        color: AppColors.white.withOpacity(0.5),
        fontWeight: FontWeight.w600,
      ),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 48)),
        maximumSize: WidgetStatePropertyAll(Size(double.infinity, 48)),
        backgroundColor: WidgetStatePropertyAll(AppColors.white),
      ),
    ),
  );
}
