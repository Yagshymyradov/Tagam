import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../data/api_response.dart';
import '../../model/model.dart';
import '../../repository/repository.dart';

class HomeViewModel with ChangeNotifier {
  HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  ApiResponse<List<BannerModel>> _bannersResponse = ApiResponse.loading();

  ApiResponse<List<BannerModel>> get bannersResponse => _bannersResponse;

  late final pagingController = PagingController<int?, RestaurantsModel>(
    firstPageKey: 1,
    invisibleItemsThreshold: 1,
  );

  Object? currentPageRequestToken;

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

  void init() {
    getBanners();
    pagingController.addPageRequestListener(fetchPage);
  }

  void fetchPage(int? page) {
    final requestToken = Object();
    currentPageRequestToken = requestToken;

    const int LimitOrder = 10;

    homeRepository.getAllRestaurants(page!, LimitOrder).then((response) {
      if (!identical(currentPageRequestToken, requestToken)) {
        return;
      }

      final newItems = response;
      final isLastPage = newItems.isEmpty || newItems.length < LimitOrder;
      if (isLastPage) {
        pagingController.appendLastPage(newItems);
      } else {
        final newPageKey = page + 1;
        pagingController.appendPage(newItems, newPageKey);
      }
    }).catchError((dynamic e) {
      if (!identical(currentPageRequestToken, requestToken)) {
        return;
      }
      pagingController.error = e;
    });
  }

  Future<void> getBanners() async {
    whenLoad(true);
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

  Future<void> refresh() async {
    pagingController.refresh();
    await getBanners();
  }
}
