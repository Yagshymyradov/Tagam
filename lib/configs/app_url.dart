abstract final class AppUrl {
  static const baseUrl = 'https://nazarly.digital/backend/api/v1';
  static const allRestaurants = '$baseUrl/restaurants';

  static String restaurantDetails(int restaurantId) => '$baseUrl/restaurants/$restaurantId';
}
