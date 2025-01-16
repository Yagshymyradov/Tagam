import '../../configs/app_url.dart';
import '../../data/json_http_client.dart';
import '../../model/restaurants/restaurants_model.dart';
import 'restaurant_details_repository.dart';

class RestaurantDetailsApiRepository implements RestaurantDetailsRepository {
  final JsonHttpClient httpClient;

  RestaurantDetailsApiRepository({required this.httpClient});

  @override
  Future<RestaurantsModel> getRestaurantDetails(int restaurantId) async {
    return httpClient.get(
      AppUrl.restaurantDetails(restaurantId),
      mapper: (data) => RestaurantsModel.fromJson(data as Map<String, dynamic>),
    );
  }
}
