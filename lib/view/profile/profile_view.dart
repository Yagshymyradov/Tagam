import 'package:flutter/material.dart';

import '../../configs/extensions.dart';
import 'widgets/widgets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Sazlamalar',
          style: context.textTheme.headlineLarge,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 20,
        ),
        children: const [
          UserInfoCard(),
          SizedBox(height: 14),
          SavedDataCards(),
          SizedBox(height: 14),
          SettingsCards(),
          SizedBox(height: 14),
          ThemeChooseCard(),
        ],
      ),
    );
  }
}
