import '../../configs/app_url.dart';
import '../../data/json_http_client.dart';
import '../../model/model.dart';
import 'home_repository.dart';

class HomeApiRepository implements HomeRepository {
  final JsonHttpClient httpClient;

  HomeApiRepository({required this.httpClient});

  @override
  Future<List<RestaurantsModel>> getAllRestaurants() async {
    return httpClient.get(
      AppUrl.allRestaurants,
      mapper: (data) => (data as List<dynamic>)
          .map((e) => RestaurantsModel.fromJson(e as Map<String, dynamic>))
          .toList(growable: false),
    );
  }
}
