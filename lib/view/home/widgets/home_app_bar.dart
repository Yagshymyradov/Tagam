import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/assets.dart';

AppBar homedAppBar() {
  return AppBar(
    title: SvgPicture.asset(Assets.ballyKoke, height: 29),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(Assets.notification),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(Assets.search),
      ),
    ],
  );
}
