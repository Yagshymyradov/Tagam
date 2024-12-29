import 'package:flutter/material.dart';

import '../../configs/extensions.dart';
import 'widgets/widgets.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text('Sebedim', style: textThemeEx.headlineLargeEx),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        children: const [
          OrderCard(),
          SizedBox(height: 8),
          WhatElseCard(),
        ],
      ),
    );
  }
}
