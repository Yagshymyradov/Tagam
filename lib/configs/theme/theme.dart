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
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 48)),
        maximumSize: WidgetStatePropertyAll(Size(double.infinity, 48)),
        backgroundColor: WidgetStatePropertyAll(AppColors.white),
      ),
    ),
  );
}
