abstract final class AppUrl {
  static const baseUrl = 'https://ballykoke-back.nazarly.digital/api/v1';
  static const topRestaurants = '$baseUrl/restaurants?=true';
  static const register = '$baseUrl/user/register';
  static const banners = '$baseUrl/banner';

  static String allRestaurants(int page, int limit) =>
      '$baseUrl/restaurants?page=$page&limit=$limit';

  static String restaurantDetails(int restaurantId) => '$baseUrl/restaurants/$restaurantId';

  static String restaurantMenus(int restaurantId) => '$baseUrl/restaurants/$restaurantId/menus';

  static String restaurantMenuProducts(int restaurantId, int menuId) =>
      '$baseUrl/dish/$restaurantId/$menuId';
}
