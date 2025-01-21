import 'package:flutter/material.dart';

import '../../data/api_response.dart';
import '../../model/model.dart';
import '../../repository/repository.dart';

class ProductsViewModel extends ChangeNotifier {
  ProductsRepository productsRepository;

  ProductsViewModel({required this.productsRepository});

  ApiResponse<List<ProductsModel>> _productsResponseState = ApiResponse.loading();

  ApiResponse<List<ProductsModel>> get productResponseState => _productsResponseState;

  Future<void> getProducts(int restaurantId, int menuId) async {
    _productsResponseState = ApiResponse.loading();
    notifyListeners();
    try {
      final response = await productsRepository.getRestaurantProducts(restaurantId, menuId);
      _productsResponseState = ApiResponse.loaded(response);
    } catch (e) {
      _productsResponseState = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }
}
