import 'package:flutter/material.dart';

import '../../configs/theme.dart';
import 'widgets/widgets.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;

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
          'Salgylarym',
          style: textThemeEx.headlineLargeEx,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        children: const [
          FieldsCard(),
          SizedBox(height: 24),
          Buttons(),
        ],
      ),
    );
  }
}
