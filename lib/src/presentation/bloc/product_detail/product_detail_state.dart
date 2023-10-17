part of 'product_detail_bloc.dart';

class ProductDetailState extends Equatable {
  final int count;
  final ProductDetail? productDetail;
  final Status status;
  final ProductModifiers? productModifier;
  final bool? hasError;
  final String? errorMessage;
  final double price;

  const ProductDetailState({
    this.count = 1,
    this.productDetail,
    this.status = Status.initial,
    this.productModifier,
    this.hasError,
    this.errorMessage,
    this.price = 0,
  });

  ProductDetailState copyWith({
    int? count,
    ProductDetail? productDetail,
    Status? status,
    ProductModifiers? productModifier,
    bool? hasError,
    String? errorMessage,
    double? price,
  }) {
    return ProductDetailState(
      count: count ?? this.count,
      productDetail: productDetail ?? this.productDetail,
      status: status ?? this.status,
      productModifier: productModifier ?? this.productModifier,
      hasError: hasError ?? this.hasError,
      errorMessage: errorMessage ?? this.errorMessage,
      price: price ?? this.price
    );
  }

  @override
  List<Object?> get props => [count, productDetail, status, productModifier, hasError, errorMessage,price];
}
