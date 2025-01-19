import 'package:flutter/cupertino.dart';

import '../../data/api_response.dart';
import '../../model/model.dart';
import '../../repository/repository.dart';

class RestaurantDetailsViewModel with ChangeNotifier {
  RestaurantDetailsRepository restaurantDetailsRepository;

  RestaurantDetailsViewModel({required this.restaurantDetailsRepository});

  ApiResponse<RestaurantsModel> _detailsResponseState = ApiResponse.loading();

  ApiResponse<RestaurantsModel> get detailsResponseState => _detailsResponseState;

  ApiResponse<List<RestaurantMenusModel>> _menusResponseState = ApiResponse.loading();

  ApiResponse<List<RestaurantMenusModel>> get menusResponseState => _menusResponseState;

  Future<void> getRestaurantDetails(int restaurantId) async {
    _detailsResponseState = ApiResponse.loading();
    notifyListeners();
    try {
      final response = await restaurantDetailsRepository.getRestaurantDetails(restaurantId);
      _responseState = ApiResponse.loaded(response);
      _detailsResponseState = ApiResponse.loaded(response);
    } catch (e) {
      _detailsResponseState = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }
    } catch (e) {
      _responseState = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }
}
