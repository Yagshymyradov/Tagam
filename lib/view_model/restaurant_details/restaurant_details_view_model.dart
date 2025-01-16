import 'package:flutter/cupertino.dart';

import '../../data/api_response.dart';
import '../../model/model.dart';
import '../../repository/repository.dart';

class RestaurantDetailsViewModel with ChangeNotifier {
  RestaurantDetailsRepository restaurantDetailsRepository;

  RestaurantDetailsViewModel({required this.restaurantDetailsRepository});

  ApiResponse<RestaurantsModel> _responseState = ApiResponse.loading();

  ApiResponse<RestaurantsModel> get responseState => _responseState;

  Future<void> getRestaurantDetails(int restaurantId) async {
    _responseState = ApiResponse.loading();
    notifyListeners();
    try {
      final response = await restaurantDetailsRepository.getRestaurantDetails(restaurantId);
      _responseState = ApiResponse.loaded(response);
    } catch (e) {
      _responseState = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }
}
