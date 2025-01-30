import 'dart:convert';

import '../../model/user/users_model.dart';
import '../service.dart';

final class AuthService {
  AppPrefsService prefsService;

  AuthService({required this.prefsService});

  Future<void> signIn(UsersModel user) async {
    final userJson = user.toJson();
    final userString = jsonEncode(userJson);
    await prefsService.setString(PreferencesKeys.user, userString);
  }

  UsersModel? getUser() {
    final userString = prefsService.getString(PreferencesKeys.user);
    if (userString != null) {
      final userJson = jsonDecode(userString);
      return UsersModel.fromJson(userJson as Map<String, dynamic>);
    } else {
      return null;
    }
  }

  Future<void> signOut() async {
    await prefsService.remove(PreferencesKeys.user);
  }
}
