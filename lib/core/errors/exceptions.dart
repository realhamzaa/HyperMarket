/// Base Exception class
class AppException implements Exception {
  final String message;
  final int? code;

  AppException({required this.message, this.code});

  @override
  String toString() => message;
}

/// Server Exception
class ServerException extends AppException {
  ServerException({required super.message, super.code});
}

/// Network Exception
class NetworkException extends AppException {
  NetworkException({super.message = 'Network error'});
}

/// Cache Exception
class CacheException extends AppException {
  CacheException({super.message = 'Cache error'});
}
