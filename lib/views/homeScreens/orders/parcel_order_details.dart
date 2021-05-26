import 'dart:async';

import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:response/response.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ParcelOrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(offset: Offset(1, 1), color: Colors.grey)
              ]),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text('طلب طرد',
                            style: TextStyle(
                                fontSize: ResponseUI.instance.setFontSize(17))),
                      ),
                      Text('وقت الاستلام : 1:35 14-4.2020'),
                      Text('سيارة مبرحة'),
                      Text('وصف :  صندوق طعام صغير'),
                      Text('جهة الدفع : المستلم'),
                      Text('اسم الراسل : احمد'),
                      Text('رقم جوال الراسل : 010931318717'),
                      Text('عنوان الرسل : القاهرة-الجيزة'),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: CustomRoundedButton(
                            backgroundColor: CustomColors.ORANGE_COLOR,
                            pressed: () {},
                            borderColor: CustomColors.ORANGE_COLOR,
                            text: 'تكرار طلب سابق',
                            textColor: Colors.white),
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text('رقم الطلب ١١',
                            style: TextStyle(
                                fontSize: ResponseUI.instance.setFontSize(17))),
                      ),
                      Text('وقت التسليم : 1:35 14-4.2020'),
                      Text('عدد المندوبين ٣'),
                      Text('قيمة الطرد : ١٠٠ ريال'),
                      Text(''),
                      Text('اسم المستلم : فريد'),
                      Text('رقم جوال المستلم : 010931318717'),
                      Text('عنوان المستلم : القاهرة-الجيزة'),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: CustomRoundedButton(
                            backgroundColor: Colors.grey,
                            borderColor: Colors.grey,
                            text: 'طباعة فاتورة الطلب',
                            pressed: () {},
                            textColor: Colors.black38),
                      )
                    ],
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text('العروض',
                    style: TextStyle(
                        fontSize: ResponseUI.instance.setFontSize(15))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(offset: Offset(1, 1), color: Colors.grey)
              ]),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {},
                            starCount: 5,
                            rating: 3,
                            size: 20.0,
                            isReadOnly: true,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0),
                        Text('3.0'),
                      ],
                    ),
                    title: Text('Ahmed'),
                    subtitle: Text('١٠٠ ريال توصيل'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    textDirection: TextDirection.ltr,
                    children: [
                      CircleAvatar(
                        backgroundColor: CustomColors.ORANGE_COLOR,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.message),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: CustomColors.ORANGE_COLOR,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.call),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: CustomColors.ORANGE_COLOR,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.favorite_border),
                      ),
                      SizedBox(
                        width: ResponseUI.instance.setWidth(100),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
