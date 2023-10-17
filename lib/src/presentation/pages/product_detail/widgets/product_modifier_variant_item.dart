import 'package:maxway_clone/src/data/models/product/product_modifier_response.dart';
import 'package:flutter/material.dart';

class ProductModifierVariantItem extends StatelessWidget {
  final ModifierVariants? variant;
  final Modifiers? modifier;
  final ValueChanged<ModifierVariants?> onTap;

  const ProductModifierVariantItem({Key? key, required this.variant, this.modifier, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSelected = modifier?.selectedVariant?.id == variant?.id;
    return InkWell(
      onTap: () => onTap.call(variant),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            modifier?.isCheckbox == true
                ? Icon(
                    isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                  )
                : Icon(
                    isSelected ? Icons.radio_button_on : Icons.radio_button_off,
                  ),
            Expanded(flex: 4, child: Text(variant?.title?.uz ?? '')),
            Expanded(flex: 1, child: Text(variant?.outPrice.toString() ?? '')),
          ],
        ),
      ),
    );
  }
}
