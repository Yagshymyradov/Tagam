import 'package:flutter/material.dart';

import '../../main.dart';
import '../../model/model.dart';
import '../../service/auth_service/auth_service.dart';
import '../../service/service.dart';

class UserViewModel with ChangeNotifier {
  AppPrefsService prefsService;

  UserViewModel({required this.prefsService});
  final authService = getIt<AuthService>();

  UsersModel? getUser() {
    return authService.getUser();
  }
}
