import '../../model/home/home_model.dart';

abstract class RestaurantDetailsRepository {
  Future<AllRestaurantsModel> getRestaurantDetails(int restaurantId);
}
