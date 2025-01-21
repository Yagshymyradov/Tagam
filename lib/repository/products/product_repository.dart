import '../../model/products/products_model.dart';

abstract class ProductsRepository {
  Future<List<ProductsModel>> getRestaurantProducts(int restaurantId, int menuId);
}
