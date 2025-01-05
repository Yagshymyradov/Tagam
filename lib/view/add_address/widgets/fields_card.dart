import 'package:flutter/material.dart';

import '../../../configs/components/form_field_text.dart';
import '../../../configs/components/phone_text_field.dart';
import '../../../configs/extensions.dart';

class FieldsCard extends StatelessWidget {
  const FieldsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Column(
          spacing: 24,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _FiledText(title: 'Weleýat'),
            _FiledText(title: 'Etrap'),
            _FiledText(title: 'Salgyňyz'),
            Row(
              spacing: 16,
              children: [
                Expanded(child: _FiledText(title: 'Öý №')),
                Expanded(child: _FiledText(title: 'Etaž')),
              ],
            ),
            PhoneTextField(),
            _FiledText(title: 'Salgyňyz Atlandyrylyşy'),
          ],
        ),
      ),
    );
  }
}

class _FiledText extends StatelessWidget {
  final String title;

  const _FiledText({required this.title});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;

    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: textThemeEx.titleSmallX),
        const FormFieldText(),
      ],
    );
  }
}
