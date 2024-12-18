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
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: ProductCostAndCount()),
              SliverToBoxAdapter(child: SizedBox(height: 8)),
              SliverToBoxAdapter(child: AboutProduct()),
            ],
          ),
        ),
      ),
    );
  }
}
