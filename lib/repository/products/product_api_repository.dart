import '../../configs/app_url.dart';
import '../../data/json_http_client.dart';
import '../../model/model.dart';
import 'product_repository.dart';

class ProductApiRepository implements ProductsRepository {
  final JsonHttpClient httpClient;

  ProductApiRepository({required this.httpClient});

  @override
  Future<List<ProductsModel>> getRestaurantProducts(int restaurantId, int menuId) async {
    return httpClient.get(
      AppUrl.restaurantMenuProducts(restaurantId, menuId),
      mapper: (data) => (data as List<dynamic>)
          .map((e) => ProductsModel.fromJson(e as Map<String, dynamic>))
          .toList(growable: false),
    );
  }
}
