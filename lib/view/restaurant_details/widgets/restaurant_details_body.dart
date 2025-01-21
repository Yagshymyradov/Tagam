import 'package:flutter/material.dart';

import 'widgets.dart';

class RestaurantDetailsBody extends StatefulWidget {

  const RestaurantDetailsBody({super.key});

  @override
  State<RestaurantDetailsBody> createState() => _RestaurantDetailsBodyState();
}

class _RestaurantDetailsBodyState extends State<RestaurantDetailsBody> {
  final _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final position = _controller.hasClients && _controller.position.pixels >= 450;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          controller: _controller,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const RestaurantAppBar(),
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
