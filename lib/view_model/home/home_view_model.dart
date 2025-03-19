import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';

import '../../data/api_response.dart';
import '../../model/model.dart';
import '../../repository/repository.dart';

class HomeViewModel with ChangeNotifier {
  HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  ApiResponse<List<RestaurantsModel>> _restaurantsResponse = ApiResponse.loading();

  ApiResponse<List<RestaurantsModel>> get restaurantsResponse => _restaurantsResponse;

  ApiResponse<List<BannerModel>> _bannersResponse = ApiResponse.loading();

  ApiResponse<List<BannerModel>> get bannersResponse => _bannersResponse;

  bool loading = false;
  bool loaded = false;
  bool error = false;
  int bannerCurrentIndex = 1;

  void setBannerCurrentIndex(int index, CarouselPageChangedReason reason) {
    bannerCurrentIndex = index + 1;
    notifyListeners();
  }

  void whenLoad(bool load) {
    loading = load;
    notifyListeners();
  }

  Future<void> getAllRestaurants({bool? needLoad}) async {
    whenLoad(needLoad ?? true);
    error = false;
    try {
      final response = await homeRepository.getAllRestaurants();
      _restaurantsResponse = ApiResponse.loaded(response);
      loaded = true;
    } catch (e) {
      error = true;
    }
    whenLoad(false);
  }

  Future<void> getBanners({bool? needLoad}) async {
    whenLoad(needLoad ?? true);
    error = false;
    try {
      final response = await homeRepository.getBanners();
      _bannersResponse = ApiResponse.loaded(response);
      loaded = true;
    } catch (e) {
      error = true;
    }
    whenLoad(false);
  }

  Future<void> refresh({bool needLoad = true}) async {
    await getAllRestaurants(needLoad: needLoad);
    await getBanners(needLoad: needLoad);
  }
}
