import 'package:flutter/material.dart';

import 'app_colors.dart';

final class TextStylesEx extends ThemeExtension<TextStylesEx> {
  final TextStyle? labelLargeX;
  final TextStyle? headlineSmallX;
  final TextStyle? labelSmallX;
  final TextStyle? priceMedium;
  final TextStyle? priceLarge;
  final TextStyle? orderText;
  final TextStyle? labelMediumWO;
  final TextStyle? bodyLargeEx;
  final TextStyle? bodySmallEx;
  final TextStyle? bodySmallReverse;
  final TextStyle? headlineLargeEx;
  final TextStyle? priceBold;
  final TextStyle? headlineSmallXWO;

  const TextStylesEx({
    required this.labelLargeX,
    required this.headlineSmallX,
    required this.labelSmallX,
    required this.priceMedium,
    required this.priceLarge,
    required this.orderText,
    required this.labelMediumWO,
    required this.bodyLargeEx,
    required this.bodySmallEx,
    required this.bodySmallReverse,
    required this.headlineLargeEx,
    required this.priceBold,
    required this.headlineSmallXWO,
  });

  @override
  TextStylesEx copyWith({
    TextStyle? labelLargeX,
    TextStyle? headlineSmallX,
    TextStyle? labelSmallX,
    TextStyle? priceMedium,
    TextStyle? priceLarge,
    TextStyle? orderText,
    TextStyle? labelMediumWO,
    TextStyle? bodyLargeEx,
    TextStyle? bodySmallEx,
    TextStyle? bodySmallReverse,
    TextStyle? headlineLargeEx,
    TextStyle? priceBold,
    TextStyle? headlineSmallXWO,
  }) {
    return TextStylesEx(
      labelLargeX: labelLargeX ?? this.labelLargeX,
      headlineSmallX: headlineSmallX ?? this.headlineSmallX,
      labelSmallX: labelSmallX ?? this.labelSmallX,
      priceMedium: priceMedium ?? this.priceMedium,
      priceLarge: priceLarge ?? this.priceLarge,
      orderText: orderText ?? this.orderText,
      labelMediumWO: labelMediumWO ?? this.labelMediumWO,
      bodyLargeEx: bodyLargeEx ?? this.bodyLargeEx,
      bodySmallEx: bodySmallEx ?? this.bodySmallEx,
      bodySmallReverse: bodySmallReverse ?? this.bodySmallReverse,
      headlineLargeEx: headlineLargeEx ?? this.headlineLargeEx,
      priceBold: priceBold ?? this.priceBold,
      headlineSmallXWO: headlineSmallXWO ?? this.headlineSmallXWO,
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
      orderText: orderText,
      labelMediumWO: labelMediumWO,
      bodyLargeEx: bodyLargeEx,
      bodySmallEx: bodySmallEx,
      bodySmallReverse: bodySmallReverse,
      headlineLargeEx: headlineLargeEx,
      priceBold: priceBold,
      headlineSmallXWO: headlineSmallXWO,
    );
  }
}

final textStyleDark = TextStylesEx(
  labelLargeX: const TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  ),
  headlineSmallX: const TextStyle(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  ),
  labelSmallX: TextStyle(
    fontSize: 12,
    color: AppColors.white.withValues(alpha: 0.6),
    fontWeight: FontWeight.w400,
  ),
  priceMedium: const TextStyle(
    fontSize: 18,
    fontStyle: FontStyle.italic,
    color: AppColors.white,
    fontWeight: FontWeight.w900,
  ),
  priceLarge: const TextStyle(
    fontSize: 22,
    fontStyle: FontStyle.italic,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  ),
  orderText: const TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  ),
  labelMediumWO: TextStyle(
    fontSize: 14,
    color: AppColors.white.withValues(alpha: 0.5),
    fontWeight: FontWeight.w400,
  ),
  bodyLargeEx: const TextStyle(
    fontSize: 18,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  ),
  bodySmallEx: TextStyle(
    fontSize: 14,
    color: AppColors.white.withValues(alpha: 0.8),
    fontWeight: FontWeight.w500,
  ),
  bodySmallReverse: TextStyle(
    fontSize: 14,
    color: AppColors.black.withValues(alpha: 0.8),
    fontWeight: FontWeight.w500,
  ),
  headlineLargeEx: const TextStyle(
    fontSize: 24,
    color: AppColors.white,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w900,
  ),
  priceBold: const TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w900,
  ),
  headlineSmallXWO: TextStyle(
    fontSize: 20,
    color: AppColors.white.withValues(alpha: 0.6),
    fontWeight: FontWeight.w400,
  ),
);
