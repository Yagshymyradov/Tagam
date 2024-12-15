import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/assets.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SliverAppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(Assets.arrowLeft),
      ),
      title: const Text('Pizza'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.filter),
        ),
      ],
      backgroundColor: colorScheme.surface,
      snap: true,
      floating: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Gözle',
              prefixIcon: SvgPicture.asset(Assets.searchWhite),
            ),
          ),
        ),
      ),
    );
  }
}
