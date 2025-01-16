import '../../model/restaurants/restaurants_model.dart';

abstract class HomeRepository {
  Future<List<RestaurantsModel>> getAllRestaurants();
}
