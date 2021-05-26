import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/utils/custom_functions.dart';
import 'package:captain_mar/views/homeScreens/orders/active_order_details.dart';
import 'package:captain_mar/views/homeScreens/orders/parcel_orders.dart';
import 'package:captain_mar/views/homeScreens/orders/prev_orders.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'active_orders.dart';

class HomeOrders extends StatefulWidget {
  @override
  _HomeOrdersState createState() => _HomeOrdersState();
}

class _HomeOrdersState extends State<HomeOrders>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: index,
    );
    tabController.addListener(() {
      print("Index:${tabController.index}");
      setState(() {
        index = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          TabBar(
              labelColor: CustomColors.WHIRE_COLOR,
              unselectedLabelColor: CustomColors.ORANGE_COLOR,
              indicatorColor: Colors.transparent,
              controller: tabController,
              tabs: [
                Tab(
                  child: index == 0
                      ? Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          decoration: BoxDecoration(
                              color: CustomColors.ORANGE_COLOR,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Text('طلبات الطرود'),
                        )
                      : Container(
                          child: Text('طلبات الطرود'),
                        ),
                ),
                Tab(
                  child: index == 1
                      ? Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          decoration: BoxDecoration(
                              color: CustomColors.ORANGE_COLOR,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text('طلبات سابقة'),
                        )
                      : Container(
                          child: Text('طلبات سابقة'),
                        ),
                ),
                Tab(
                  child: index == 2
                      ? Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          decoration: BoxDecoration(
                              color: CustomColors.ORANGE_COLOR,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: Text('طلبات نشطة'),
                        )
                      : Container(
                          child: Text('طلبات نشطة'),
                        ),
                )
              ]),
          Expanded(
              child: TabBarView(
                  controller: tabController,
                  children: [ParcelOrders(), PrevOrders(), ActiveOrders()]))
        ],
      ),
    );
  }
}
