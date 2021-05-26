import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

class PrevOrderListItem extends StatelessWidget {
  int index;
  PrevOrderListItem({this.index});
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
                Text('تم توصيل الطلب'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
