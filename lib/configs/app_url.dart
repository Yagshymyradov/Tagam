abstract final class AppUrl {
  static const baseUrl = 'https://ballykoke-back.nazarly.digital/api/v1';
  static const allRestaurants = '$baseUrl/restaurants';
  static const topRestaurants = '$baseUrl/restaurants?=true';

  static String restaurantDetails(int restaurantId) => '$baseUrl/restaurants/$restaurantId';
}
