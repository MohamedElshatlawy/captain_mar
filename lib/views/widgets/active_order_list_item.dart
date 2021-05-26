import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

class ActiveOrderListItem extends StatelessWidget {
  int index;
  ActiveOrderListItem({this.index});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('طلبك من محل'), Text('رقم الطلب $index')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('تم قبول طلبك وخارج من المحل'),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        right: ResponseUI.instance.setWidth(50)),
                    child: CustomRoundedButton(
                      backgroundColor: CustomColors.ORANGE_COLOR,
                      borderColor: CustomColors.ORANGE_COLOR,
                      pressed: () {},
                      text: 'مراسلة المندوب',
                      textColor: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
