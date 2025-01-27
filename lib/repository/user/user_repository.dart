import '../../model/model.dart';

abstract class UserRepository {
  Future<UsersModel> register(CreateUsers users);
}
