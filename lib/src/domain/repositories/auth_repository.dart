import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:maxway_clone/src/core/base/base_repository.dart';
import 'package:maxway_clone/src/core/utils/app_constants.dart';
import 'package:maxway_clone/src/data/models/auth/check_phone_response.dart';
import 'package:maxway_clone/src/data/models/auth/login_request.dart';
import 'package:maxway_clone/src/data/models/auth/login_response.dart';
import 'package:maxway_clone/src/data/models/auth/registr_phone_request.dart';
import 'package:maxway_clone/src/domain/network/api_client.dart';
import 'package:maxway_clone/src/domain/network/failure.dart';
import 'package:maxway_clone/src/domain/network/server_error.dart';

class AuthRepository extends BaseRepository {
  AuthRepository({required this.apiClient});

  final ApiClient apiClient;

  Future<Either<BaseFailure, LoginResponse>> login(
    LoginRequest request,
  ) async {
    try {
      final response = await apiClient.login(AppConstants.shipperId, request);
      return Right(response);
    } on DioException catch (error) {
      return Left(getErrorMessage(error));
    } on Exception catch (_) {
      return const Left(BaseFailure("Something wrong"));
    }
  }

  Future<void> registerUser(
    RegisterPhoneRequest request,
  ) async {}

  Future<CheckPhoneResponse> checkPhone(
    RegisterPhoneRequest request,
  ) async {
    dynamic response;
    try {
      response = apiClient.checkPhone(request);
    } on TypeError {
      debugPrint('type error');
      // ignore: avoid_catching_errors
    } on NoSuchMethodError {
      debugPrint('no such method error');
      // ignore: avoid_catches_without_on_clauses
    } catch (error, stacktrace) {
      debugPrint('Exception occurred: $error stacktrace: $stacktrace');
      final exception = ServerError.withDioError(
        error: error as DioException,
      );
    }
    return response;
  }
}
