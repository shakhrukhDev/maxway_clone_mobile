import 'package:dio/dio.dart';
import 'package:maxway_clone/src/domain/network/failure.dart';
import 'package:maxway_clone/src/domain/network/server_error.dart';

abstract class BaseRepository {
  BaseFailure getErrorMessage(DioException error) {
    var serverError = ServerError.withDioError(error: error);
    return BaseFailure(
      serverError.message,
      errorType: error.type,
      code: serverError.errorCode,
    );
  }

  bool checkIsCancelled(ServerError? value) {
    return (value?.message ?? '') != 'Canceled';
  }
}
