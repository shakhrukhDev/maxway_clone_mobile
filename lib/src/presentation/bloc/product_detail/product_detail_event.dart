part of 'product_detail_bloc.dart';

abstract class ProductDetailEvent extends Equatable {}

class ChangeProductCountEvent extends ProductDetailEvent {
  final int count;

  ChangeProductCountEvent({required this.count});

  @override
  List<Object?> get props => [count];
}

class LoadDataEvent extends ProductDetailEvent {
  final String productId;

  LoadDataEvent({
    required this.productId,
  });

  @override
  List<Object?> get props => [productId];
}


class ProductModifierSelectedEvent extends ProductDetailEvent {
  final int modifierIndex;
  final ModifierVariants? selectedVariant;

  ProductModifierSelectedEvent({required this.selectedVariant, required this.modifierIndex});

  @override
  List<Object?> get props => [modifierIndex, selectedVariant];
}

