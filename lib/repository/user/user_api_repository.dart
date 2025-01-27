import '../../configs/app_url.dart';
import '../../data/json_http_client.dart';
import '../../model/model.dart';
import '../repository.dart';

class UserApiRepository extends UserRepository {
  final JsonHttpClient httpClient;

  UserApiRepository({required this.httpClient});

  @override
  Future<UsersModel> register(CreateUsers users) async {
    return httpClient.post(
      AppUrl.register,
      body: users.toJson(),
      mapper: (data) => UsersModel.fromJson(data as Map<String, dynamic>),
    );
  }
}
