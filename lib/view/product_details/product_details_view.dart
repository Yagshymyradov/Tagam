import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
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
                  SliverToBoxAdapter(child: SizedBox(height: 8)),
                  SliverToBoxAdapter(child: ProductDescription()),
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverToBoxAdapter(child: ProductSimilarDishesText()),
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  ProductSimilarDishes(),
                  SliverToBoxAdapter(child: SizedBox(height: 90)),
                ],
              ),
            ),
          ),
          const ProductOrderButton(text: 'Add order:', price: '  120 manat'),
        ],
      ),
    );
  }
}
