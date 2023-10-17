import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_plus/share_plus.dart';
import 'package:maxway_clone/src/core/utils/app_colors.dart';
import 'package:maxway_clone/src/core/widgets/global_button.dart';
import 'package:maxway_clone/src/injecter_container.dart';
import 'package:maxway_clone/src/presentation/bloc/product_detail/product_detail_bloc.dart';
import 'package:maxway_clone/src/presentation/pages/product_detail/models/product_detail_argument.dart';
import 'package:maxway_clone/src/presentation/pages/product_detail/widgets/product_modifier_item.dart';

class ProductDetail extends StatefulWidget {
  final ProductDetailArgument arguments;

  const ProductDetail({
    required this.arguments,
    super.key,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String? svet;
  late ProductDetailBloc _bloc;

  @override
  void initState() {
    _bloc = sl<ProductDetailBloc>();
    _bloc.add(LoadDataEvent(productId: widget.arguments.product.id ?? ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      bloc: _bloc,
      builder: (_, state) {
        return Scaffold(
            extendBody: true,
            backgroundColor: AppColors.whiteColors,
            body: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.network(
                        widget.arguments.product.image ?? '',
                        fit: BoxFit.cover,
                        errorBuilder: (a, b, c) {
                          return Image.asset(
                            "assets/png_image/restaurant_image.jpg",
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 16,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                            backgroundColor: AppColors.whiteColors,
                            child: SvgPicture.asset('assets/svg_icon/ic_arrow.svg')),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      right: 16,
                      child: InkWell(
                        onTap: () {
                          Share.share('com.example.team_ploff_kebab_app');
                        },
                        child: CircleAvatar(
                            backgroundColor: AppColors.whiteColors,
                            child: SvgPicture.asset('assets/svg_icon/ic_share.svg')),
                      ),
                    ),
                  ],
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return ProductModifierItem(
                      modifierIndex: index,
                      modifier: state.productModifier?.groupModifiers?[index],
                    );
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, index) => const SizedBox(height: 12),
                  itemCount: state.productModifier?.groupModifiers?.length ?? 0,
                ),
              ],
            ),
            bottomNavigationBar: Container(
              height: 170.h,
              padding: EdgeInsets.all(12.w),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 121.w,
                        height: 44.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: AppColors.defaultGrey),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  context
                                      .read<ProductDetailBloc>()
                                      .add(ChangeProductCountEvent(count: state.count - 1));
                                },
                                icon: SvgPicture.asset('assets/svg_icon/ic_minus.svg')),
                            Text(
                              state.count.toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  context
                                      .read<ProductDetailBloc>()
                                      .add(ChangeProductCountEvent(count: state.count + 1));
                                },
                                icon: SvgPicture.asset('assets/svg_icon/ic_plus.svg')),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Text("${state.price} so'm",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  GlobalButton(text: "Добавить в корзину ", onPressed: () {})
                ],
              ),
            ));
      },
    );
  }
}
