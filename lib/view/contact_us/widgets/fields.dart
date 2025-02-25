import 'package:flutter/material.dart';

import '../../../configs/assets.dart';
import '../../../configs/theme.dart';

class Fields extends StatelessWidget {
  const Fields({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 48),
        Text(
          'Mowzuk',
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
            hintText: 'Mowzuk saýla',
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Hatyňyz',
          style: textThemeEx.titleSmallX,
        ),
        const SizedBox(height: 8),
        TextFormField(
          cursorColor: AppColors.white,
          cursorHeight: 15,
          maxLines: 5,
          decoration: InputDecoration(
            fillColor: colorScheme.primaryContainer,
            enabledBorder: border,
            focusedBorder: border,
            hintText: 'Enter here',
          ),
        ),
        const SizedBox(height: 24),
        Row(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.attention),
            Expanded(
              child: Text(
                'Siz bilen telefon arkaly habarlaşmagymyz ahmal. Soraglaryňyza jogap SMS arkaly gelmegi hem mümkin!',
                style: textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
