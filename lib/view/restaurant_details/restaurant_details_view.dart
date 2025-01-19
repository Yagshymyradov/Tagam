import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/api_response.dart';
import '../../main.dart';
import '../../view_model/view_model.dart';
import 'widgets/widgets.dart';

class RestaurantDetailsView extends StatelessWidget {
  final int restaurantId;

  const RestaurantDetailsView({
    super.key,
    required this.restaurantId,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RestaurantDetailsViewModel(
        restaurantDetailsRepository: getIt(),
      )..getRestaurantDetails(restaurantId),
      child: Consumer<RestaurantDetailsViewModel>(
        builder: (context, value, child) {
          switch (value.detailsResponseState.status) {
            case Status.loaded:
              return const RestaurantDetailsBody();
            case Status.error:
              return Text(value.detailsResponseState.message.toString());
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
