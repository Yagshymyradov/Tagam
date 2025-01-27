import 'package:flutter/material.dart';

class Validator {
  static String? emptyField(
    BuildContext context,
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    final trimmedValue = value.trimRight();
    if (trimmedValue.isEmpty) {
      return 'Boş bolup bilmez!';
    }
    return null;
  }

  static String? phoneValidator(BuildContext context, String? value) {
    if (value == null || value.isEmpty) return 'Telefon belginizi girizin!';

    final trimmedValue = value.trim();
    if (value.length >= 2 || trimmedValue.length < 13) {
      const allowedPhonePrefixes = ['60', '61', '62', '63', '64', '65', '71'];
      if (allowedPhonePrefixes.contains(value.substring(1, 3))) {
        return null;
      }
    }
    return 'Nadogry telefon belgi!';
  }
}
