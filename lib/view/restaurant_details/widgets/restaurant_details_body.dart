import 'package:flutter/material.dart';

import '../../../configs/components/components.dart';
import '../../../model/model.dart';
import 'details_header.dart';
import 'widgets.dart';

class RestaurantDetailsBody extends StatelessWidget {
  final AllRestaurantsModel? data;

  const RestaurantDetailsBody({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(child: DetailsHeader(data: data)),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            const SliverToBoxAdapter(
              child: CustomTabBar(
                tabsTitle: [
                  'Menu',
                  'About restaurant',
                ],
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              MenuTab(),
              Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
