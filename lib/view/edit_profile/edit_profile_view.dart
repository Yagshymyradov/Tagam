import 'package:flutter/material.dart';

import '../../configs/extensions.dart';
import 'widgets/widgets.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

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
          'Edit profile',
          style: textThemeEx.headlineLargeEx,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const UserInfo(),
            const SizedBox(height: 38),
            const Fields(),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 51),
          ],
        ),
      ),
    );
  }
}
