import 'package:flutter/material.dart';

import '../../configs/extensions.dart';
import 'widgets/widgets.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 6,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          style: IconButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Sargytlarym',
          style: textThemeEx.headlineLargeEx,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        children: const [
          MyOrdersCard(),
        ],
      ),
    );
  }
}
