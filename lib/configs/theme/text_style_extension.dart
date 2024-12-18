import 'package:flutter/material.dart';

import 'app_colors.dart';

final class TextStylesEx extends ThemeExtension<TextStylesEx> {
  final TextStyle? labelLargeX;
  final TextStyle? headlineSmallX;
  final TextStyle? labelSmallX;
  final TextStyle? priceMedium;
  final TextStyle? priceLarge;

  const TextStylesEx({
    required this.labelLargeX,
    required this.headlineSmallX,
    required this.labelSmallX,
    required this.priceMedium,
    required this.priceLarge,
  });

  @override
  TextStylesEx copyWith({
    TextStyle? labelLargeX,
    TextStyle? headlineSmallX,
    TextStyle? labelSmallX,
    TextStyle? priceMedium,
    TextStyle? priceLarge,
  }) {
    return TextStylesEx(
      labelLargeX: labelLargeX ?? this.labelLargeX,
      headlineSmallX: headlineSmallX ?? this.headlineSmallX,
      labelSmallX: labelSmallX ?? this.labelSmallX,
      priceMedium: priceMedium ?? this.priceMedium,
      priceLarge: priceLarge ?? this.priceLarge,
    );
  }

  @override
  TextStylesEx lerp(TextStylesEx? other, double t) {
    if (other is! TextStylesEx) {
      return this;
    }
    return TextStylesEx(
      labelLargeX: labelLargeX,
      headlineSmallX: headlineSmallX,
      labelSmallX: labelLargeX,
      priceMedium: priceMedium,
      priceLarge: priceLarge,
    );
  }
}

const textStyleDark = TextStylesEx(
  labelLargeX: TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  ),
  headlineSmallX: TextStyle(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  ),
  labelSmallX: TextStyle(
    fontSize: 12,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  ),
  priceMedium: TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.italic,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  ),
  priceLarge: TextStyle(
    fontSize: 22,
    fontStyle: FontStyle.italic,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  ),
);
