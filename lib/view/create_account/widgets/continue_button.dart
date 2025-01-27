import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../configs/components/indicators.dart';
import '../../../configs/theme/app_colors.dart';
import '../../../view_model/view_model.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isLoading = context.select((CreateAccountViewModel v) => v.isLoading);

    return ElevatedButton(
      onPressed: () => context.read<CreateAccountViewModel>().createAccount(context),
      child: isLoading
          ? const LoadingIndicator(color: AppColors.black)
          : Text(
              'Continue',
              style: textTheme.bodyMedium,
            ),
    );
  }
}
