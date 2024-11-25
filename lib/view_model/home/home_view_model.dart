import 'package:flutter/foundation.dart';

import '../../model/model.dart';
import '../../repository/repository.dart';

class HomeViewModel with ChangeNotifier {
  HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  List<AllRestaurantsModel> _restaurants = [];

  List<AllRestaurantsModel> get restaurants => _restaurants;

  Object? _error;

  Object? get error => _error;

  Future<void> allRestaurants() async {
    _isLoading = true;
    notifyListeners();
    try {
      final response = await homeRepository.allRestaurants();
      _restaurants = response;
    } catch (e) {
      _error = e;
    }
    _isLoading = false;
    notifyListeners();
  }
}
