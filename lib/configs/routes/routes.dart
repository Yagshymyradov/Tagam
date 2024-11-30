import 'package:flutter/material.dart';

import '../../view/view.dart';

abstract final class NavigationRouteNames {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const home = '/home';
  static const restaurantDetails = '/restaurants_details';
}

abstract final class Navigation {
  static final routes = <String, Widget Function(BuildContext)>{
    NavigationRouteNames.splash: (_) => const SplashView(),
    NavigationRouteNames.onboarding: (_) => const OnboardingView(),
    NavigationRouteNames.home: (_) => const HomeView(),
  };

  static Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationRouteNames.restaurantDetails:
        final arguments = settings.arguments;
        final restaurantId = arguments is int ? arguments : 0;
        return MaterialPageRoute(
          builder: (_) => RestaurantDetailsView(restaurantId: restaurantId),
        );
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(
          builder: (_) => widget,
        );
    }
  }
}
