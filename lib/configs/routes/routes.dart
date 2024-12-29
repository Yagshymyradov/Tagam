import 'package:flutter/material.dart';

import '../../view/view.dart';

abstract final class NavigationRouteNames {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const mainScreen = '/main_screen';
  static const home = '/home';
  static const profile = '/profile';
  static const search = '/search';
  static const restaurantDetails = '/restaurants_details';
  static const productDetails = '/product_details';
  static const card = '/card';
}

abstract final class Navigation {
  static final routes = <String, Widget Function(BuildContext)>{
    NavigationRouteNames.splash: (_) => const SplashView(),
    NavigationRouteNames.onboarding: (_) => const OnboardingView(),
    NavigationRouteNames.mainScreen: (_) => const MainView(),
    NavigationRouteNames.home: (_) => const HomeView(),
    NavigationRouteNames.profile: (_) => const ProfileView(),
    NavigationRouteNames.search: (_) => const SearchView(),
    NavigationRouteNames.productDetails: (_) => const ProductDetailsView(),
    NavigationRouteNames.card: (_) => const CardView(),
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
