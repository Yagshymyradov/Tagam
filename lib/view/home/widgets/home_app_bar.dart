import 'package:flutter/material.dart';

import '../../../configs/assets.dart';
import '../../../configs/routes/routes.dart';

AppBar homedAppBar(BuildContext context) {
  return AppBar(
    centerTitle: false,
    title: SvgPicture.asset(Assets.ballyKoke, height: 29),
    actions: [
      IconButton(
        onPressed: () => Navigator.pushNamed(
          context,
          NavigationRouteNames.notification,
        ),
        style: IconButton.styleFrom(
          backgroundColor: Colors.transparent,
        ),
        icon: SvgPicture.asset(Assets.notification),
      ),
      //NOTE: for future implementation
      // IconButton(
      //   onPressed: () => Navigator.pushNamed(
      //     context,
      //     NavigationRouteNames.search,
      //   ),
      //   style: IconButton.styleFrom(
      //     backgroundColor: Colors.transparent,
      //   ),
      //   icon: SvgPicture.asset(Assets.search),
      // ),
    ],
  );
}
