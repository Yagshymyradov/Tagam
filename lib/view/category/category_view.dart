import 'package:flutter/material.dart';

import '../../configs/extensions.dart';
import 'widgets/widgets.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Kategorýalar',
          style: textThemeEx.headlineLargeEx,
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 150,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => const CategoryCard(),
      ),
    );
  }
}
