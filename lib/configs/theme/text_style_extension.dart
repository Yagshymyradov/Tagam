import 'package:flutter/material.dart';

import 'colors.dart';

final class TextStylesEx extends ThemeExtension<TextStylesEx> {
  final TextStyle? labelLargeX;
  final TextStyle? headlineSmallX;

  const TextStylesEx({
    required this.labelLargeX,
    required this.headlineSmallX,
  });

  @override
  TextStylesEx copyWith({
    TextStyle? labelLargeX,
    TextStyle? headlineSmallX,
  }) {
    return TextStylesEx(
      labelLargeX: labelLargeX ?? this.labelLargeX,
      headlineSmallX: headlineSmallX ?? this.headlineSmallX,
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
);
