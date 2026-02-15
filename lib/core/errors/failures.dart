import 'package:equatable/equatable.dart';

/// Base Failure class
abstract class Failure extends Equatable {
  final String message;
  final int? code;

  const Failure({required this.message, this.code});

  @override
  List<Object?> get props => [message, code];
}

/// Server Failure
class ServerFailure extends Failure {
  const ServerFailure({required super.message, super.code});
}

/// Network Failure
class NetworkFailure extends Failure {
  const NetworkFailure({super.message = 'لا يوجد اتصال بالإنترنت'});
}

/// Cache Failure
class CacheFailure extends Failure {
  const CacheFailure({super.message = 'فشل في قراءة البيانات المحلية'});
}

/// Validation Failure
class ValidationFailure extends Failure {
  const ValidationFailure({required super.message});
}

/// Authentication Failure
class AuthFailure extends Failure {
  const AuthFailure({super.message = 'فشل في التحقق من الهوية'});
}

/// Unknown Failure
class UnknownFailure extends Failure {
  const UnknownFailure({super.message = 'حدث خطأ غير متوقع'});
}
