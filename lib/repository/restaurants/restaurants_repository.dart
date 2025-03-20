import '../../model/model.dart';

abstract class HomeRepository {
  Future<List<RestaurantsModel>> getAllRestaurants(int page, int limit);

  Future<List<RestaurantsModel>> getTopRestaurants();

  Future<List<BannerModel>> getBanners();
}
