import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maxway_clone/src/core/utils/app_colors.dart';
import 'package:maxway_clone/src/presentation/pages/main/orders/widgets/active_order_button.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
      Size.fromHeight(120),
          child: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Мои заказы',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w600,
                        height: 0.06,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Container(
                      height: 45.h,
                      width: 343.w,
                      decoration: ShapeDecoration(
                        color: AppColors.whiteColors,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                      ),
                      child: Row(
                        children: [
                          Expanded(child: ActiveOrderButton(text: 'Active Order', color: AppColors.white, onTap: (){}, textColor: AppColors.black,)),
                          Expanded(child: ActiveOrderButton(text: 'Orders History', color: AppColors.whiteColors, onTap: (){}, textColor: AppColors.blackColors,)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Container(
                height: 144,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        children: [
                          const Text(
                            'Заказ №789',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 101,
                            height: 33,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                            decoration: ShapeDecoration(
                              color: AppColors.orderPrepairing,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Готовится',
                                  style: TextStyle(
                                    color: AppColors.orderPrepairingtext,
                                    fontSize: 13.sp,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
