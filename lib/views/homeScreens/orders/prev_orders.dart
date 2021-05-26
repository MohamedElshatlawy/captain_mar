import 'package:captain_mar/utils/custom_functions.dart';
import 'package:captain_mar/views/homeScreens/orders/active_order_details.dart';
import 'package:captain_mar/views/homeScreens/orders/prev_order_details.dart';
import 'package:captain_mar/views/widgets/active_order_list_item.dart';
import 'package:captain_mar/views/widgets/prev_order_list_item.dart';
import 'package:flutter/material.dart';

class PrevOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ...List.generate(
              10,
              (index) => InkWell(
                    onTap: () {
                      CustomFunctions.navigateScreen(
                          context: context,
                          nextScreen: PrevOrderDetails(),
                          nextScreenTitle: 'طلباتي');
                    },
                    child: PrevOrderListItem(
                      index: index + 1,
                    ),
                  ))
        ],
      ),
    );
  }
}
