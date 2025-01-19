import '../../model/restaurants/restaurants_model.dart';

abstract class RestaurantDetailsRepository {
  Future<RestaurantsModel> getRestaurantDetails(int restaurantId);

  Future<List<RestaurantMenusModel>> getRestaurantMenus(int restaurantId);
}
