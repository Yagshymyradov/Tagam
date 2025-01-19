import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/api_response.dart';
import '../../../main.dart';
import '../../../view_model/view_model.dart';
import 'widgets.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({super.key});

  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {
  @override
  Widget build(BuildContext context) {
    final details = context.read<RestaurantDetailsViewModel>().detailsResponseState;
    return ChangeNotifierProvider(
      create: (context) => RestaurantDetailsViewModel(
        restaurantDetailsRepository: getIt(),
      )..getRestaurantMenus(details.data?.id ?? 0),
      child: Consumer<RestaurantDetailsViewModel>(
        builder: (context, value, child) {
          switch (value.menusResponseState.status) {
            case Status.loaded:
              return const MenuTabBody();
            case Status.error:
              return Text(value.menusResponseState.message.toString());
            case Status.loading:
              return const Center(child: CircularProgressIndicator());
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
