import 'package:flutter/material.dart';

import '../../configs/extensions.dart';
import '../../configs/theme.dart';
import 'widgets/fields.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 6,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          style: IconButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Habarlaşmak',
          style: textThemeEx.headlineLargeEx,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 24,
          children: [
            const Fields(),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Ugrat',
                style: textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
