import 'package:flutter/material.dart';

import '../extensions.dart';
import '../theme/app_colors.dart';

class FormFieldText extends StatelessWidget {
  final String? hintText;

  const FormFieldText({
    super.key,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;

    return TextFormField(
      style: textThemeEx.labelLargeX,
      cursorColor: AppColors.white,
      cursorHeight: 15,
      decoration: InputDecoration(
        hintText: hintText ?? 'Placeholder text',
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        isDense: true,
        filled: true,
        hintStyle: textThemeEx.titleMediumX,
        fillColor: AppColors.charlestonGreen,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 0.5,
            color: AppColors.white.withValues(alpha: 0.12),
          ),
        ),
      ),
    );
  }
}
