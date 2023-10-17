import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maxway_clone/src/core/widgets/text_items.dart';
import 'package:maxway_clone/src/injecter_container.dart';
import 'package:maxway_clone/src/presentation/bloc/order_create/order_bloc.dart';
import 'package:maxway_clone/src/presentation/pages/order_create/pages/deliver_tab/deliver_tab.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'pick_up/pick_up_tab.dart';

class OrderCreatePage extends StatefulWidget {
  const OrderCreatePage({super.key});

  @override
  State<OrderCreatePage> createState() => _OrderCreatePageState();
}

class _OrderCreatePageState extends State<OrderCreatePage> {
  late Completer<YandexMapController> mapController =
  Completer<YandexMapController>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OrderBloc>()..add(BranchsEvent())..add(CurrentLocationEvent()),
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            toolbarHeight: 70,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            title: CustomText.items(
                text: 'Оформить заказ', size: 20, color: Colors.black),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Colors.white60,
              tabs: [
                Tab(
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    child: Center(
                        child: CustomText.items(
                            text: 'Доставка', size: 15, color: Colors.black)),
                  ),
                ),
                Tab(
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    child: Center(
                        child: CustomText.items(
                            text: 'Самовывоз', size: 15, color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          body:   const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              DeliverTab(),
              PickupTab(),
            ],
          ),
          bottomNavigationBar: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            onPressed: () {},
            child: CustomText.items(text: 'Заказать', size: 15),
          ),
        ),
      ),
    );
  }
}
