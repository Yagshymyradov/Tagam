import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'configs/routes/routes.dart';
import 'data/json_http_client.dart';
import 'repository/repository.dart';
import 'view_model/view_model.dart';

GetIt getIt = GetIt.instance;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeApiRepository(httpClient: JsonHttpClient()),
  );
  getIt.registerLazySingleton<RestaurantDetailsRepository>(
    () => RestaurantDetailsApiRepository(httpClient: JsonHttpClient()),
  );

  runApp(const TagamApp());
}

class TagamApp extends StatelessWidget {
  const TagamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeViewModel(homeRepository: getIt()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: NavigationRouteNames.home,
        routes: Navigation.routes,
        onGenerateRoute: Navigation.onGenerateRoute,
      ),
    );
  }
}
