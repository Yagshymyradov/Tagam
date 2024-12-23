import 'package:flutter/material.dart';

import '../../../model/model.dart';
import 'widgets.dart';

class RestaurantDetailsBody extends StatefulWidget {
  final AllRestaurantsModel? data;

  const RestaurantDetailsBody({super.key, required this.data});

  @override
  State<RestaurantDetailsBody> createState() => _RestaurantDetailsBodyState();
}

class _RestaurantDetailsBodyState extends State<RestaurantDetailsBody> {
  final controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final position = controller.hasClients && controller.position.pixels >= 450;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          controller: controller,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            RestaurantAppBar(data: widget.data),
          ],
          body: AnimatedPadding(
            padding: EdgeInsets.only(top: position ? 55 : 20),
            duration: const Duration(milliseconds: 320),
            child: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                MenuTab(),
                InfoTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
