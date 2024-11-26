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
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => RestaurantDetailsViewModel(
          restaurantDetailsRepository: getIt(),
        )..getRestaurantDetails(restaurantId),
        child: Consumer<RestaurantDetailsViewModel>(
          builder: (context, value, child) {
            switch (value.responseState.status) {
              case Status.loaded:
                return RestaurantDetailsBody(data: value.responseState.data);
              case Status.error:
                return Text(value.responseState.message.toString());
              case Status.loading:
                return const Center(child: CircularProgressIndicator());
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
