import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../configs/assets.dart';
import '../../configs/theme.dart';
import 'widgets/category_details_tab_bar.dart';

class CategoryDetailsView extends StatefulWidget {
  const CategoryDetailsView({super.key});

  @override
  State<CategoryDetailsView> createState() => _CategoryDetailsViewState();
}

class _CategoryDetailsViewState extends State<CategoryDetailsView> {
  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        titleSpacing: 6,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          style: IconButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Launch',
          style: textThemeEx.headlineLargeEx,
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: SvgPicture.asset(Assets.search),
                  hintText: 'Search',
                ),
              ),
            ),
          ),
        ],
        body: const CategoryDetailsTabBar(restaurantId: 1),
      ),
    );
  }
}
