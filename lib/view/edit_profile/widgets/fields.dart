import 'package:flutter/material.dart';

import '../../../configs/components/phone_text_field.dart';
import '../../../configs/theme.dart';

class Fields extends StatelessWidget {
  const Fields({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'User Name',
          style: textThemeEx.titleSmallX,
        ),
        const SizedBox(height: 8),
        TextFormField(
          cursorColor: AppColors.white,
          cursorHeight: 15,
          decoration: InputDecoration(
            fillColor: colorScheme.primaryContainer,
            enabledBorder: border,
            focusedBorder: border,
            hintText: 'Adynyz',
          ),
        ),
        const SizedBox(height: 12),
        const SizedBox(height: 8),
        const PhoneTextField(
          needBorder: false,
        ),
      ],
    );
  }
}
