import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/api_response.dart';
import '../../main.dart';
import '../../view_model/view_model.dart';
import 'widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homedAppBar(context),
      body: ChangeNotifierProvider(
        create: (context) => HomeViewModel(
          homeRepository: getIt(),
        )..getAllRestaurants(),
        child: Consumer<HomeViewModel>(
          builder: (context, value, child) {
            switch (value.responseState.status) {
              case Status.loading:
                return const Center(child: CircularProgressIndicator());
              case Status.loaded:
                return HomeBody(value: value);
              case Status.error:
                return Text(value.toString());
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
