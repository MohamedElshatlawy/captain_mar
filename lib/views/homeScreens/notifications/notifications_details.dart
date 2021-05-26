import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class NotificationsDetails extends StatelessWidget {
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
                            text: 'تعديل الطلب',
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
                            text: 'حذف الطلب',
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
              child: Row(
                children: [
                  Expanded(
                      child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    title: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Ahmed'),
                        SizedBox(
                          width: 10,
                        ),
                        SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {},
                            starCount: 1,
                            rating: 1,
                            size: 20.0,
                            isReadOnly: true,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0),
                        Text('5'),
                      ],
                    ),
                    subtitle: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('السعر ١٠٠ ريال '),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                      insetPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            textDirection: TextDirection.ltr,
                                            children: [
                                              IconButton(
                                                  icon: Icon(Icons.close),
                                                  padding: EdgeInsets.all(0),
                                                  onPressed: () =>
                                                      Navigator.pop(ctx)),
                                            ],
                                          ),
                                          Text('طلبك وصل بنجاح'),
                                          Text('قيم طلب رقم 12345'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          ListTile(
                                            contentPadding: EdgeInsets.all(0),
                                            leading: CircleAvatar(
                                              radius: 46,
                                              backgroundColor: Colors.grey,
                                            ),
                                            title: Row(
                                              children: [
                                                Text('Ahmed'),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                CircleAvatar(
                                                  radius: 20,
                                                  backgroundColor:
                                                      CustomColors.ORANGE_COLOR,
                                                  foregroundColor: Colors.white,
                                                  child: Icon(Icons.favorite),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              Text('قيم مندوب التوصيل'),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          SmoothStarRating(
                                              allowHalfRating: false,
                                              onRated: (v) {},
                                              starCount: 5,
                                              rating: 5,
                                              size: 30.0,
                                              isReadOnly: true,
                                              color: Colors.yellow,
                                              borderColor: Colors.yellow,
                                              spacing: 0.0),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Container(
                                            height: 100,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            width:
                                                ResponseUI.instance.screenWidth,
                                            child: Text(
                                              'اكتب تعليق',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey,
                                                      offset: Offset(1, 1))
                                                ]),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Container(
                                            height: 46,
                                            child: CustomRoundedButton(
                                              backgroundColor:
                                                  CustomColors.ORANGE_COLOR,
                                              borderColor:
                                                  CustomColors.ORANGE_COLOR,
                                              text: 'تقييم',
                                              pressed: () {},
                                              textColor: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      ),
                                    ));
                          },
                          child: Container(
                            width: ResponseUI.instance.setWidth(120),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            decoration: BoxDecoration(
                                color: CustomColors.ORANGE_COLOR,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              'قبول المندوب',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: ListTile(
                      title: Text(
                        '10.5 كم',
                        style: TextStyle(color: CustomColors.PRIMARY_GREEN),
                      ),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            textDirection: TextDirection.ltr,
                            children: [
                              Text('المدة : ساعة للتوصيل'),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              textDirection: TextDirection.ltr,
                                              children: [
                                                IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    icon: Icon(Icons.close),
                                                    onPressed: () =>
                                                        Navigator.pop(ctx))
                                              ],
                                            ),
                                            Text('رفض الطلب'),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                                'اسف جدا ولكن سعر العرض ١٠٠ ريال هو الحد الادنى للتوصيل '),
                                            Text(' هل تريد الغاء الطلب'),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              height: 46,
                                              child: CustomRoundedButton(
                                                backgroundColor:
                                                    CustomColors.ORANGE_COLOR,
                                                borderColor:
                                                    CustomColors.ORANGE_COLOR,
                                                text: 'الغاء الطلب',
                                                pressed: () {},
                                                textColor: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 14,
                                            ),
                                            Container(
                                              height: 46,
                                              child: CustomRoundedButton(
                                                backgroundColor:
                                                    CustomColors.WHIRE_COLOR,
                                                borderColor:
                                                    CustomColors.ORANGE_COLOR,
                                                text: 'متابعة الطلب',
                                                pressed: () {},
                                                textColor:
                                                    CustomColors.ORANGE_COLOR,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ));
                            },
                            child: Container(
                              width: ResponseUI.instance.setWidth(100),
                              padding: EdgeInsets.symmetric(vertical: 3),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(child: Text('رفض')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
