import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/routes/routes.dart';

AppBar homedAppBar(BuildContext context) {
  return AppBar(
    title: SvgPicture.asset(Assets.ballyKoke, height: 29),
    actions: [
      IconButton(
        onPressed: () {},
        style: IconButton.styleFrom(
          backgroundColor: Colors.transparent,
        ),
        icon: SvgPicture.asset(Assets.notification),
      ),
      IconButton(
        onPressed: () => Navigator.pushNamed(
          context,
          NavigationRouteNames.search,
        ),
        style: IconButton.styleFrom(
          backgroundColor: Colors.transparent,
        ),
        icon: SvgPicture.asset(Assets.search),
      ),
    ],
  );
}
