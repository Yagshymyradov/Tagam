import 'package:flutter/material.dart';

import '../../../configs/components/components.dart';
import '../../../view_model/view_model.dart';
import 'widgets.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.read<RestaurantDetailsViewModel>().detailsResponseState.data;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: DescriptionCard(
              title: 'About the place',
              text: data?.description ?? '',
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        // NOTE: for future implementation
        // const SliverToBoxAdapter(child: RestaurantDifferencesCard()),
        // const SliverToBoxAdapter(child: SizedBox(height: 8)),
        const SliverToBoxAdapter(child: RestaurantContactInfo()),
      ],
    );
  }
}
