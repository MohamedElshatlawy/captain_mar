import 'package:captain_mar/utils/custom_functions.dart';
import 'package:captain_mar/views/widgets/active_order_list_item.dart';
import 'package:flutter/material.dart';

import 'active_order_details.dart';

class ActiveOrders extends StatelessWidget {
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
                          nextScreen: ActiveOrderDetails(),
                          nextScreenTitle: 'طلباتي');
                    },
                    child: ActiveOrderListItem(
                      index: index + 1,
                    ),
                  ))
        ],
      ),
    );
  }
}
