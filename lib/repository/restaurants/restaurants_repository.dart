import '../../model/model.dart';

abstract class HomeRepository {
  Future<List<RestaurantsModel>> getAllRestaurants();

  Future<List<RestaurantsModel>> getTopRestaurants();

  Future<List<BannerModel>> getBanners();
}
