import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../configs/components/phone_text_field.dart';
import '../../../configs/theme.dart';
import '../../../configs/validators.dart';
import '../../../view_model/view_model.dart';

class Fields extends StatefulWidget {
  const Fields({super.key});

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  @override
  void initState() {
    super.initState();
    context.read<CreateAccountViewModel>().initPlatformState();
  }

  @override
  void dispose() {
    super.dispose();
    context.read<CreateAccountViewModel>().dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;
    final viewModel = context.watch<CreateAccountViewModel>();
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    );
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        width: 0.5,
        color: AppColors.cinnabar.withValues(alpha: 0.5),
      ),
    );
    return Form(
      key: viewModel.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: textThemeEx.titleSmallX,
          ),
          const SizedBox(height: 8),
          TextFormField(
            validator: (value) => Validator.emptyField(context, value),
            controller: viewModel.nameController,
            cursorColor: AppColors.white,
            cursorHeight: 15,
            decoration: InputDecoration(
              fillColor: colorScheme.primaryContainer,
              enabledBorder: border,
              focusedBorder: border,
              errorBorder: errorBorder,
              focusedErrorBorder: errorBorder,
              hintText: 'Adynyz',
            ),
          ),
          const SizedBox(height: 16),
          PhoneTextField(
            needBorder: false,
            isPhoneNumberError: viewModel.phoneNumberError,
            validator: (value) => Validator.phoneValidator(context, value),
            controller: viewModel.phoneController,
          ),
        ],
      ),
    );
  }
}
