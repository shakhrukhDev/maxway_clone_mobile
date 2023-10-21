import 'package:chuck_interceptor/chuck.dart';
import 'package:dio/dio.dart';
import 'package:maxway_clone/src/data/models/auth/base_response.dart';
import 'package:maxway_clone/src/data/models/auth/check_customer_request.dart';
import 'package:maxway_clone/src/data/models/auth/check_customer_response.dart';
import 'package:maxway_clone/src/data/models/auth/confirm_login_request.dart';
import 'package:maxway_clone/src/data/models/auth/confirm_register_request.dart';
import 'package:maxway_clone/src/data/models/auth/customer.dart';
import 'package:maxway_clone/src/data/models/auth/login_request.dart';
import 'package:maxway_clone/src/data/models/auth/login_response.dart';
import 'package:maxway_clone/src/data/models/auth/register_request.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:maxway_clone/src/core/utils/app_constants.dart';
import 'package:maxway_clone/src/data/models/auth/check_phone_response.dart';
import 'package:maxway_clone/src/data/models/auth/registr_phone_request.dart';
import 'package:maxway_clone/src/data/models/home/banner_response.dart';
import 'package:maxway_clone/src/data/models/home/category_response.dart';
import 'package:maxway_clone/src/data/models/home/product_response.dart';
import 'package:maxway_clone/src/data/models/product/product_detail_response.dart';
import 'package:maxway_clone/src/data/models/product/product_modifier_response.dart';
import 'package:maxway_clone/src/data/models/profile/branchs_response.dart';

part 'api_client.g.dart';

Chuck alice = Chuck(
  navigatorKey: rootNavigatorKey,
  showInspectorOnShake: true,
);

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    return _ApiClient(dio);
  }

  /// Check customer exits
  @POST('customers/phone')
  Future<CheckCustomerResponse> checkCustomer(
    @Header('Shipper') String shipperId,
    @Body() CheckCustomerRequest request,
  );

  /// Login
  @POST('customers/login')
  Future<LoginResponse> login(
    @Header('Shipper') String shipperId,
    @Body() LoginRequest request,
  );

  /// Register
  @POST('customers/register')
  Future<BaseResponse> register(
    @Header('Shipper') String shipperId,
    @Body() RegisterRequest request,
  );

  /// Register confirm
  @POST('customers/register-confirm')
  Future<Customer> confirmRegister(
    @Header('Shipper') String shipperId,
    @Header('Platform') String platformId,
    @Body() ConfirmRegisterRequest request,
  );

  /// Login confirm
  @POST('customers/confirm-login')
  Future<Customer> confirmLogin(
    @Header('Shipper') String shipperId,
    @Header('Platform') String platformId,
    @Body() ConfirmLoginRequest request,
  );

  /// Get customer information
  @GET('customer-profile')
  Future<Customer> getProfile(@Header('Authorization') String token);

  /// Get customers about information
  @GET('customers/{customer_id}')
  Future<Customer> getCustomers(
    @Header('Authorization') String token,
    @Path('customer_id') String customerId,
  );

  /// Put customer update
  @PUT('customers/{customer_id}')
  Future<BaseResponse> updateCustomer(
    @Header('Authorization') String token,
    @Path('customer_id') String customerId,
    @Body() Customer request,
  );

  /// Get banner list
  @GET('v1/banner')
  Future<BannerResponse> getBanner();

  /// Get product category
  @GET('v2/category')
  Future<CategoryResponse> getCategory();

  /// Get products
  @GET('v2/category-with-products')
  Future<ProductsWithCategoryResponse> getProductWithCategory();

  /// Get product info
  @GET('v2/product/{product_id}')
  Future<ProductDetail> getProductDetail(
    @Path('product_id') String? productId,
  );

  @GET('/v2/modifier')
  Future<ProductModifierResponse> getProductModifier(
    @Path('product_id') String? productId,
  );

  @POST('v1/customers/phone')
  Future<CheckPhoneResponse> checkPhone(
    @Body() RegisterPhoneRequest request,
  );

  /// Get branches
  @GET('/v1/branches')
  Future<BranchsResponse> getAllBranches();
}
