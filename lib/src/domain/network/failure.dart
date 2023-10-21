import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}


class BaseFailure {
  const BaseFailure(this.message, {this.code, this.type, this.status, this.errorType});

  final int? code;
  final int? status;
  final String? type;
  final String message;
  final DioExceptionType? errorType;

  @override
  String toString() {
    return message;
  }
}

abstract class ErrorStatuses {
  static const loadingData = -11044;
  static const otpExpire = -11026;
  static const pincodeNotMatch = -11011;
}

class ServerFailure extends Failure {
  final String message;
  final int? statusCode;

  ServerFailure({
    required this.message,
    this.statusCode,
  });

  @override
  List<Object?> get props => [message];
}

class NoInternetFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class CacheFailure extends Failure {
  final String message;

  CacheFailure({required this.message});

  @override
  List<Object?> get props => [message];
}