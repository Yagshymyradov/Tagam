import 'package:flutter/material.dart';

import 'theme/text_style_extension.dart';

extension BuildContextEx on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStylesEx get textThemeEx => Theme.of(this).extension<TextStylesEx>()!;
}
