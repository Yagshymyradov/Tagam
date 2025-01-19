import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/components/components.dart';
import 'details_header.dart';

class RestaurantAppBar extends StatelessWidget {

  const RestaurantAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 424,
      toolbarHeight: 40,
      leadingWidth: 56,
      title: const CustomTabBar(tabsTitle: ['Menu', 'Info']),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: BlurredIconButton(
          onTap: () => Navigator.pop(context),
          icon: SvgPicture.asset(Assets.arrowLeft),
        ),
      ),
      actions: [
        BlurredIconButton(
          onTap: () {},
          icon: SvgPicture.asset(Assets.heart),
        ),
        const SizedBox(width: 10),
      ],
      flexibleSpace: const DetailsHeader(),
    );
  }
}
