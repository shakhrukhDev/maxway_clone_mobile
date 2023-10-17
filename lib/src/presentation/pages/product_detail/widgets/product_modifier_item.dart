import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maxway_clone/src/data/models/product/product_modifier_response.dart';
import 'package:flutter/material.dart';
import 'package:maxway_clone/src/presentation/bloc/product_detail/product_detail_bloc.dart';
import 'package:maxway_clone/src/presentation/pages/product_detail/widgets/product_modifier_variant_item.dart';

class ProductModifierItem extends StatelessWidget {
  final Modifiers? modifier;
  final int modifierIndex;

  const ProductModifierItem({Key? key, required this.modifier, required this.modifierIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductDetailBloc>();
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Text(modifier?.name?.uz ?? ''),
          const SizedBox(height: 24),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return ProductModifierVariantItem(
                variant: modifier?.variants?[index],
                onTap: (value) => bloc.add(
                  ProductModifierSelectedEvent(
                    modifierIndex: modifierIndex,
                    selectedVariant: value,
                  ),
                ),
              );
            },
            itemCount: modifier?.variants?.length ?? 0,
            separatorBuilder: (_, index) => const SizedBox(height: 16),
          ),
        ],
      ),
    );
  }
}
