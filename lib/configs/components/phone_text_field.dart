import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../extensions.dart';
import '../theme/app_colors.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final borderColor = AppColors.white.withValues(alpha: 0.12);
    const fieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(
        right: Radius.circular(8),
      ),
      borderSide: BorderSide.none,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone', style: textThemeEx.titleSmallX),
        const SizedBox(height: 8),
        Row(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: borderColor, width: 0.5),
                  left: BorderSide(color: borderColor, width: 0.5),
                  top: BorderSide(color: borderColor, width: 0.5),
                ),
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(8),
                ),
                color: AppColors.charlestonGreen,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10.5,
                ),
                child: Text(
                  '+993',
                  style: textThemeEx.labelLargeX,
                ),
              ),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: borderColor,
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: AppColors.charlestonGreen,
                ),
                child: TextFormField(
                  style: textThemeEx.labelLargeX,
                  cursorColor: AppColors.white,
                  cursorHeight: 15,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    enabledBorder: fieldBorder,
                    focusedBorder: fieldBorder,
                    isDense: true,
                    hintText: '(**) **-**-**',
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(13),
                    FilteringTextInputFormatter.digitsOnly,
                    PhoneNumberFormatter(),
                  ],
                  keyboardType: TextInputType.phone,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text.replaceAll(RegExp(r'\D'), '');
    final buffer = StringBuffer();

    for (int i = 0; i < text.length; i++) {
      if (i == 0) buffer.write('(');
      if (i == 2) buffer.write(') ');
      if (i == 4) buffer.write('-');
      if (i == 6) buffer.write('-');

      buffer.write(text[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
