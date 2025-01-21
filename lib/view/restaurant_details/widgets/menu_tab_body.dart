import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../configs/components/product_card.dart';
import '../../../configs/theme.dart';
import '../../../data/api_response.dart';
import '../../../main.dart';
import '../../../view_model/view_model.dart';

class MenuTabBody extends StatefulWidget {
  final int? restaurantId;

  const MenuTabBody({super.key, this.restaurantId});

  @override
  State<MenuTabBody> createState() => _MenuTabBodyState();
}

class _MenuTabBodyState extends State<MenuTabBody> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    final data = context.read<RestaurantDetailsViewModel>().menusResponseState.data;
    _tabController = TabController(length: data?.length ?? 0, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final detailsModel = context.watch<RestaurantDetailsViewModel>();
    final data = detailsModel.menusResponseState.data;
    final textThemeEx = context.textThemeEx;

    return Column(
      children: [
        TabBar.secondary(
          unselectedLabelStyle: textThemeEx.labelMediumWO,
          controller: _tabController,
          padding: const EdgeInsets.all(16),
          indicator: const BoxDecoration(),
          onTap: (value) => setState(() {}),
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelPadding: const EdgeInsets.only(right: 8),
          tabs: data
                  ?.mapIndexed(
                    (i, e) => DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.white.withValues(
                          alpha: _tabController.index == i ? 1 : 0.1,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: AppColors.white.withValues(alpha: 0.02),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(e.name),
                      ),
                    ),
                  )
                  .toList(growable: false) ??
              [],
        ),
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: data?.map(
                  (e) {
                    return ChangeNotifierProvider(
                      create: (context) => ProductsViewModel(
                        productsRepository: getIt(),
                      )..getProducts(
                          widget.restaurantId ?? 0,
                          data[_tabController.index].id,
                        ),
                      child: Consumer<ProductsViewModel>(
                        builder: (context, value, child) {
                          switch (value.productResponseState.status) {
                            case Status.loaded:
                              return const RestaurantProducts();
                            case Status.error:
                              return Text(value.productResponseState.message.toString());
                            case Status.loading:
                              return const Center(child: CircularProgressIndicator());
                            default:
                              return const SizedBox();
                          }
                        },
                      ),
                    );
                  },
                ).toList(growable: false) ??
                [],
          ),
        ),
      ],
    );
  }
}

class RestaurantProducts extends StatelessWidget {
  const RestaurantProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.read<ProductsViewModel>().productResponseState.data;
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      itemBuilder: (context, index) => const ProductCard(),
      itemCount: data?.length ?? 0,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 300,
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 14,
      ),
    );
  }
}
