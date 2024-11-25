import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import '../../view_model/view_model.dart';
import 'widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => HomeViewModel(homeRepository: getIt())..allRestaurants(),
        child: Consumer<HomeViewModel>(
          builder: (context, value, child) {
            if (value.restaurants.isNotEmpty) {
              return HomeBody(value: value);
            }
            if (value.error != null) {
              return Text(value.error.toString());
            }
            if (value.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
