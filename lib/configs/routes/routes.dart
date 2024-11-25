import 'package:flutter/material.dart';

import '../../view/view.dart';

abstract final class NavigationRouteNames {
  static const home = '/home';
}

abstract final class Navigation {
  static final routes = <String, Widget Function(BuildContext)>{
    NavigationRouteNames.home: (_) => const HomeView(),
  };
}
