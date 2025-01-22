import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/api_response.dart';
import '../../model/model.dart';
import '../../repository/repository.dart';
import '../../view/restaurant_details/widgets/widgets.dart';

class RestaurantDetailsViewModel with ChangeNotifier {
  RestaurantDetailsRepository restaurantDetailsRepository;

  RestaurantDetailsViewModel({required this.restaurantDetailsRepository});

  SortType sortType = SortType.defaultSort;

  ApiResponse<RestaurantsModel> _detailsResponseState = ApiResponse.loading();

  ApiResponse<RestaurantsModel> get detailsResponseState => _detailsResponseState;

  ApiResponse<List<RestaurantMenusModel>> _menusResponseState = ApiResponse.loading();

  ApiResponse<List<RestaurantMenusModel>> get menusResponseState => _menusResponseState;

  Future<void> getRestaurantDetails(int restaurantId) async {
    _detailsResponseState = ApiResponse.loading();
    notifyListeners();
    try {
      final response = await restaurantDetailsRepository.getRestaurantDetails(restaurantId);
      _detailsResponseState = ApiResponse.loaded(response);
    } catch (e) {
      _detailsResponseState = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }

  Future<void> getRestaurantMenus(int restaurantId) async {
    _menusResponseState = ApiResponse.loading();
    notifyListeners();
    try {
      final response = await restaurantDetailsRepository.getRestaurantMenus(restaurantId);
      _menusResponseState = ApiResponse.loaded(response);
    } catch (e) {
      _menusResponseState = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }

  void setSortType(SortType sortType) {
    this.sortType = sortType;
    notifyListeners();
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
