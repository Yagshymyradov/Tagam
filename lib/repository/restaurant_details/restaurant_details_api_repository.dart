import '../../configs/app_url.dart';
import '../../data/json_http_client.dart';
import '../../model/home/home_model.dart';
import 'restaurant_details_repository.dart';

class RestaurantDetailsApiRepository implements RestaurantDetailsRepository {
  final JsonHttpClient httpClient;

  RestaurantDetailsApiRepository({required this.httpClient});

  @override
  Future<AllRestaurantsModel> getRestaurantDetails(int restaurantId) async {
    return httpClient.get(
      AppUrl.restaurantDetails(restaurantId),
      mapper: (data) => AllRestaurantsModel.fromJson(data as Map<String, dynamic>),
    );
  }
}
