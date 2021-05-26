import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/viewModel/screen_title_provider.dart';
import 'package:captain_mar/views/homeScreens/delivery/delivery_address.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:response/response.dart';

class CompleteOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenTitleProvider = Provider.of<ScreenTitleProvider>(context);

    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 30,
              ),
              title: Text('ماكدونالدز'),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'تفاصيل الطلب',
                  style:
                      TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Text(
                'اطلب هنا',
                style: TextStyle(color: Colors.grey),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, offset: Offset(1, 1))
                  ],
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'اضف صورة للطلب',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'معاك كوبون خصم',
                  style:
                      TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, offset: Offset(1, 1))
                  ],
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'اسعار تقريبية',
                  style:
                      TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ...List.generate(
                3,
                (index) => Row(
                      children: [
                        Expanded(flex: 1, child: Text('0 الى 5 كم')),
                        Expanded(
                            flex: 3,
                            child: ListTile(
                              title: Text('ادنى سعر ٢٠ ريال اعلى سعر ٢٥ ريال'),
                              trailing: Radio(
                                  value: 1, groupValue: 1, onChanged: (v) {}),
                            ))
                      ],
                    )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'اختار مكان التسليم من العناوين المحفوظة',
                  style:
                      TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
                ),
                Text(
                  'اختر',
                  style: TextStyle(
                      color: CustomColors.ORANGE_COLOR,
                      fontSize: ResponseUI.instance.setFontSize(14)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('أو اكتب عنوان جديد'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'اختار مكان التسليم',
                  style:
                      TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.map),
                  SizedBox(
                    width: 6,
                  ),
                  Text('موقعك الحالي')
                ],
              ),
              padding: EdgeInsets.all(5),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, offset: Offset(1, 1))
                  ],
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('وقت التسليم'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.timer),
                      ],
                    ),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, offset: Offset(1, 1))
                        ],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(child: Center(child: Text('أو'))),
                Expanded(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('اطلب الان'),
                    SizedBox(
                      width: 5,
                    ),
                    Checkbox(value: true, onChanged: (v) {})
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 48,
              margin: EdgeInsets.symmetric(
                  horizontal: ResponseUI.instance.setWidth(40)),
              child: CustomRoundedButton(
                backgroundColor: CustomColors.ORANGE_COLOR,
                pressed: () async {
                  String prevTitle = screenTitleProvider.title;
                  screenTitleProvider.setTitle('عنوان التسليم');
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => DeliveryAddress()));
                  screenTitleProvider.setTitle(prevTitle);
                },
                borderColor: CustomColors.ORANGE_COLOR,
                text: 'اكمل الطلب',
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
