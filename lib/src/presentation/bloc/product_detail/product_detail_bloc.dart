import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maxway_clone/src/data/models/product/product_detail_response.dart';
import 'package:maxway_clone/src/data/models/product/product_modifier_response.dart';
import 'package:maxway_clone/src/domain/repositories/product_repository.dart';
import 'package:maxway_clone/src/presentation/bloc/auth/auth_bloc.dart';

part 'product_detail_event.dart';

part 'product_detail_state.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  final ProductRepository productRepository;

  ProductDetailBloc({required this.productRepository}) : super(const ProductDetailState()) {
    on<ChangeProductCountEvent>(_changeProductCount);
    on<LoadDataEvent>(_loadData);
    on<ProductModifierSelectedEvent>(_selectedModifier);
  }

  void _loadData(
    LoadDataEvent event,
    Emitter<ProductDetailState> emit,
  ) async {

    final result = await productRepository.getProductDetail(productId: event.productId);
    result.fold((left) {
      emit(state.copyWith(hasError: true, errorMessage: left.message));
    }, (right) {
      emit(state.copyWith(productDetail: right));
    });

    final res = await productRepository.getProductModifier(productId: event.productId);
    res.fold((left) {
      emit(state.copyWith(hasError: true, errorMessage: left.message));
    }, (right) {
      emit(state.copyWith(productModifier: right.productModifiers));
    });
  }

  void _selectedModifier(ProductModifierSelectedEvent event, Emitter<ProductDetailState> emit){
    final modifier =state.productModifier?.groupModifiers?[event.modifierIndex];
    modifier?.selectedVariant = event.selectedVariant;
    final price = _calculatePrice();
    emit(state.copyWith(price: price));
  }

  double _calculatePrice() {
    double modifierPrice = 0;
    state.productModifier?.groupModifiers?.forEach((element) {
      if (element.selectedVariant != null) {
        modifierPrice += element.selectedVariant?.outPrice?.toDouble() ?? 0;
      }
    });
    final singlePrice = modifierPrice + (state.productDetail?.outPrice?.toDouble() ?? 0);
    return (singlePrice * state.count);
  }

  void _changeProductCount(
    ChangeProductCountEvent event,
    Emitter<ProductDetailState> emit,
  ) {
    emit(state.copyWith(count: event.count <= 1 ? 1 : event.count));
  }
}
