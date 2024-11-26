import '../../model/home/home_model.dart';

abstract class HomeRepository {
  Future<List<AllRestaurantsModel>> getAllRestaurants();
}
