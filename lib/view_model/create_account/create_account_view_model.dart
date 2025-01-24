import 'package:flutter/material.dart';

import '../../view/choose_city/widgets/widgets.dart';

class CreateAccountViewModel with ChangeNotifier {
  CityType? cityType;

  void setCity(CityType type) {
    cityType = type;
    notifyListeners();
  }
}
