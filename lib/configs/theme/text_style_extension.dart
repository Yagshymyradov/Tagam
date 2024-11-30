import 'package:flutter/material.dart';

import 'colors.dart';

final class TextStylesEx extends ThemeExtension<TextStylesEx> {
  final TextStyle? labelLargeX;

  const TextStylesEx({
    required this.labelLargeX,
  });

  @override
  TextStylesEx copyWith({
    TextStyle? labelLargeX,
  }) {
    return TextStylesEx(
      labelLargeX: labelLargeX ?? this.labelLargeX,
    );
  }

  @override
  TextStylesEx lerp(TextStylesEx? other, double t) {
    if (other is! TextStylesEx) {
      return this;
    }
    return TextStylesEx(
      labelLargeX: labelLargeX,
    );
  }
}

const textStyleDark = TextStylesEx(
  labelLargeX: TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  ),
);
