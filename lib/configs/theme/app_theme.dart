import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';
import 'color_scheme.dart';
import 'text_style_extension.dart';

final class AppTheme {
  AppTheme._();

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.black,
    colorScheme: AppColorScheme.colorSchemeDark,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.white.withValues(alpha: 0.06)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.white.withValues(alpha: 0.06)),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      filled: true,
      hintStyle: TextStyle(
        fontSize: 14,
        color: AppColors.white.withValues(alpha: 0.6),
        fontWeight: FontWeight.w400,
      ),
      fillColor: AppColors.white.withValues(alpha: 0.1),
      prefixIconConstraints: const BoxConstraints(
        maxHeight: 24,
        minWidth: 48,
      ),
    ),
    textTheme: AppTextTheme.darkTextTheme,
    extensions: const [textStyleDark],
    appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
      ),
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
        border: Border.all(
          color: AppColors.black.withValues(alpha: 0.08),
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.white.withValues(alpha: 0.06),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.black.withValues(alpha: 0.2),
      selectedItemColor: AppColors.white,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        color: AppColors.white.withValues(alpha: 0.5),
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
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          AppColors.white.withValues(alpha: 0.12),
        ),
      ),
    ),
  );
}
