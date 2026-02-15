/// App-wide constants
class AppConstants {
  // API
  static const String baseUrl = 'https://api.example.com';
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  
  // Cache
  static const Duration cacheMaxAge = Duration(minutes: 5);
  
  // Pagination
  static const int defaultPageSize = 20;
  
  // Storage Keys
  static const String keyAuthToken = 'auth_token';
  static const String keyUserId = 'user_id';
  static const String keyThemeMode = 'theme_mode';
  static const String keyLanguage = 'language';
  
  // Validation
  static const int minPasswordLength = 6;
  static const int maxPasswordLength = 50;
  
  // App Info
  static const String appName = 'هايبر برو';
  static const String packageName = 'com.hyper.pro';
}
