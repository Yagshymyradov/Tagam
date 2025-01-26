import 'package:flutter/material.dart';

import '../../../configs/components/phone_text_field.dart';
import '../../../configs/theme.dart';

class Fields extends StatelessWidget {
  const Fields({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: textThemeEx.titleSmallX,
        ),
        const SizedBox(height: 8),
        TextFormField(
          cursorColor: AppColors.white,
          cursorHeight: 15,
          decoration: InputDecoration(
            fillColor: colorScheme.primaryContainer,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.cinnabar.withValues(alpha: 0.5),
                width: 0.5,
              ),
            ),
            hintText: 'Adynyz',
          ),
        ),
        const SizedBox(height: 16),
        const PhoneTextField(needBorder: false),
      ],
    );
  }
}
