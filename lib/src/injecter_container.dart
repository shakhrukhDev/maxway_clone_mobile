import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:maxway_clone/src/domain/network/api_client.dart';
import 'package:maxway_clone/src/domain/repositories/auth_repository.dart';
import 'package:maxway_clone/src/domain/repositories/home_repository.dart';
import 'package:maxway_clone/src/domain/repositories/order_create_repsository.dart';
import 'package:maxway_clone/src/domain/repositories/product_repository.dart';
import 'package:maxway_clone/src/domain/repositories/profile_repository.dart';
import 'package:maxway_clone/src/presentation/bloc/home/home_bloc.dart';
import 'package:maxway_clone/src/presentation/bloc/main/main_bloc.dart';
import 'package:maxway_clone/src/presentation/bloc/order_create/order_bloc.dart';
import 'package:maxway_clone/src/presentation/bloc/product_detail/product_detail_bloc.dart';
import 'package:maxway_clone/src/presentation/bloc/profile/profile_bloc.dart';

import 'presentation/bloc/auth/auth_bloc.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(
        contentType: 'application/json',
        sendTimeout: const Duration(seconds: 50),
        receiveTimeout: const Duration(seconds: 50),
        connectTimeout: const Duration(seconds: 50),
        headers: {"Shipper": "d4b1658f-3271-4973-8591-98a82939a664"},
      )
      ..interceptors.addAll(
        [
          LogInterceptor(
            requestBody: true,
            responseBody: true,
          ),
          alice.getDioInterceptor(),
        ],
      ),
  );

  sl<Dio>().interceptors.add(
        RetryInterceptor(
          dio: sl<Dio>(),
          toNoInternetPageNavigator: () async {
            //   return Navigator.pushNamed(
            //   rootNavigatorKey.currentContext!,
            //   Routes.noInternet,
            // );
          },
          // accessTokenGetter: () => localSource.accessToken,
          refreshTokenFunction: () async {
            // await localSource.userClear();
            // await Navigator.pushNamedAndRemoveUntil(
            //   rootNavigatorKey.currentContext!,
            //   Routes.initial,
            //       (route) => false,
            // );
          },
        ),
      );

  sl
    ..registerLazySingleton(InternetConnectionChecker.new)
    ..registerFactory<ApiClient>(
      () => ApiClient(sl()),
    );

  _mainPage();
  _profilePage();
  _loginPage();
  _detailPage();
  _orderCreatePage();
}

void _loginPage() {
  sl
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepository(apiClient: sl()),
    )
    ..registerFactory(
      () => AuthBloc(authRepository: sl()),
    );
}

void _mainPage() {
  sl
    ..registerLazySingleton<HomeRepository>(
      () => HomeRepository(apiClient: sl()),
    )
    ..registerFactory(
      () => HomeBloc(homeRepository: sl()),
    )
    ..registerFactory(
      () => MainBloc(),
    );
}

void _profilePage() {
  sl
    ..registerLazySingleton<BranchesRepository>(
      () => BranchesRepository(apiClient: sl()),
    )
    ..registerFactory(
      () => ProfileBloc(
        branchsRepository: sl(),
      ),
    );
}

void _orderCreatePage() {
  sl
    ..registerLazySingleton<OrderCreateRepository>(
      () => OrderCreateRepository(
        apiClient: sl(),
      ),
    )
    ..registerFactory(
      () => OrderBloc(
        orderCreateRepository: sl(),
      ),
    );
}

void _detailPage() {
  sl
    ..registerLazySingleton<ProductRepository>(
          () => ProductRepository(apiClient: sl()),
    )
    ..registerFactory(
          () => ProductDetailBloc(
        productRepository: sl(),
      ),
    );
}
