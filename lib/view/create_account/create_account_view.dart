import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 48,
          ),
          children: [
            Text(
              'Täze hasap döret',
              style: textTheme.displayMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Interact with all their content using a unique suite of apps available exclusively.',
              style: textTheme.labelLarge,
            ),
            const SizedBox(height: 36),
            const Fields(),
            const SizedBox(height: 36),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Continue',
                style: textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
