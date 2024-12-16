import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const ProductDetailsAppBar(),
        ],
        body: const CustomScrollView(),
      ),
    );
  }
}
