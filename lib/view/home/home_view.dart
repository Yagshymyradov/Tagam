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
      appBar: homedAppBar(context),
      body: ChangeNotifierProvider(
        create: (context) => HomeViewModel(
          homeRepository: getIt(),
        )
          ..getAllRestaurants()
          ..getTopRestaurants(),
        child: Consumer<HomeViewModel>(
          builder: (context, value, child) {
            if (value.loading) return const LoadingIndicator();
            if (value.error) return ErrorIndicator(onTap: () => value.refresh());
            if (value.loaded) return HomeBody(value: value);
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
