import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'configs/routes/routes.dart';
import 'configs/show_snack_bar.dart';
import 'configs/theme/app_theme.dart';
import 'data/json_http_client.dart';
import 'repository/repository.dart';
import 'service/auth_service/auth_service.dart';
import 'service/preferences.dart';
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

  getIt.registerSingletonAsync<AppPrefsService>(
    () async => AppPrefsService(await SharedPreferences.getInstance()),
  );

  getIt.registerLazySingleton<OnboardingViewModel>(
    () => OnboardingViewModel(prefsService: getIt()),
  );

  getIt.registerLazySingleton<ProductsRepository>(
    () => ProductApiRepository(httpClient: JsonHttpClient()),
  );

  getIt.registerLazySingleton<UserRepository>(
    () => UserApiRepository(httpClient: JsonHttpClient()),
  );

  getIt.registerLazySingleton<UserViewModel>(
    () => UserViewModel(prefsService: getIt()),
  );

  getIt.registerLazySingleton<AuthService>(
    () => AuthService(prefsService: getIt()),
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
        ChangeNotifierProvider(
          create: (_) => OnboardingViewModel(prefsService: getIt()),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductsViewModel(productsRepository: getIt()),
        ),
        ChangeNotifierProvider(
          create: (_) => RestaurantDetailsViewModel(
            restaurantDetailsRepository: getIt(),
          ),
        ),
        ChangeNotifierProvider(create: (_) => MainScreenViewModel()),
        ChangeNotifierProvider(
          create: (_) => CreateAccountViewModel(userRepository: getIt()),
        ),
        ChangeNotifierProvider(create: (_) => UserViewModel(prefsService: getIt())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        routes: Navigation.routes,
        scaffoldMessengerKey: scaffoldMessengerKey,
        initialRoute: NavigationRouteNames.splash,
        onGenerateRoute: Navigation.onGenerateRoute,
      ),
    );
  }
}
