import 'package:flutter/material.dart';

import '../../../configs/components/components.dart';
import 'widgets.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: DescriptionCard(
            title: 'About the place',
            text:
                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverToBoxAdapter(child: RestaurantDifferencesCard()),
        SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverToBoxAdapter(child: RestaurantContactInfo()),
      ],
    );
  }
}
