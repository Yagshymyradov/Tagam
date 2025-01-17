import 'package:flutter/material.dart';

import '../../configs/routes/routes.dart';
import '../../data/api_response.dart';
import '../../model/model.dart';
import '../../repository/repository.dart';

class HomeViewModel with ChangeNotifier {
  HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  ApiResponse<List<RestaurantsModel>> _restaurantsResponse = ApiResponse.loading();

  ApiResponse<List<RestaurantsModel>> get restaurantsResponse => _restaurantsResponse;

  ApiResponse<List<RestaurantsModel>> _topRestaurantsResponse = ApiResponse.loading();

  ApiResponse<List<RestaurantsModel>> get topRestaurantsResponse => _topRestaurantsResponse;

  bool loading = false;
  bool loaded = false;
  bool error = false;

  void whenLoad(bool load) {
    loading = load;
    notifyListeners();
  }

  Future<void> getAllRestaurants({bool? needLoad}) async {
    whenLoad(needLoad ?? true);
    error = false;
    try {
      final response = await homeRepository.getAllRestaurants();
      _restaurantsResponse = ApiResponse.loaded(response);
      loaded = true;
    } catch (e) {
      error = true;
    }
    whenLoad(false);
  }

  Future<void> getTopRestaurants({bool? needLoad}) async {
    whenLoad(needLoad ?? true);
    error = false;
    try {
      final response = await homeRepository.getTopRestaurants();
      _topRestaurantsResponse = ApiResponse.loaded(response);
      loaded = true;
    } catch (e) {
      error = true;
    }
    whenLoad(false);
  }

  Future<void> refresh({bool needLoad = true}) async {
    await getAllRestaurants(needLoad: needLoad);
    await getTopRestaurants(needLoad: needLoad);
  }

  void onRestaurantTap(BuildContext context, int restaurantId) {
    Navigator.pushNamed(
      context,
      NavigationRouteNames.restaurantDetails,
      arguments: restaurantId,
    );
  }
}
