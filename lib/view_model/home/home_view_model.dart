import 'package:flutter/material.dart';

import '../../configs/routes/routes.dart';
import '../../data/api_response.dart';
import '../../model/model.dart';
import '../../repository/repository.dart';

class HomeViewModel with ChangeNotifier {
  HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  ApiResponse<List<AllRestaurantsModel>> _responseState = ApiResponse.loading();

  ApiResponse<List<AllRestaurantsModel>> get responseState => _responseState;

  Future<void> getAllRestaurants() async {
    _responseState = ApiResponse.loading();
    notifyListeners();
    try {
      final response = await homeRepository.getAllRestaurants();
      _responseState = ApiResponse.loaded(response);
    } catch (e) {
      _responseState = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }

  void onRestaurantTap(BuildContext context, int restaurantId) {
    Navigator.pushNamed(
      context,
      NavigationRouteNames.restaurantDetails,
      arguments: restaurantId,
    );
  }
}
