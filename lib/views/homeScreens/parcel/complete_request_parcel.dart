import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:captain_mar/views/widgets/parcel_textfield.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

class CompleteParcelRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(offset: Offset(1, 1), color: Colors.grey)]),
        child: Column(
          children: [
            Text(
              'العناوين',
              style: TextStyle(
                fontSize: ResponseUI.instance.setFontSize(17),
                color: CustomColors.ORANGE_COLOR,
              ),
            ),
            ParcelTextField(
              label: 'اسم المستلم',
              controller: TextEditingController(),
            ),
            ParcelTextField(
              label: 'رقم هاتف المستلم',
              controller: TextEditingController(),
            ),
            ParcelTextField(
              label: 'عنوان المرسل',
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('موقعك الحالي'),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.map)
                ],
              ),
              controller: TextEditingController(),
            ),
            ParcelTextField(
              label: 'وقت استلام الطرد',
              icon: Icon(Icons.timer),
              controller: TextEditingController(),
            ),
            ParcelTextField(
              label: 'ملاحظات المستلم',
              controller: TextEditingController(),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: CustomColors.ORANGE_COLOR,
                ),
                Text(
                  'إضافة طرد اخرى',
                  style: TextStyle(
                    fontSize: ResponseUI.instance.setFontSize(17),
                    color: CustomColors.ORANGE_COLOR,
                  ),
                ),
              ],
            ),
            Expanded(
                child: Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 48,
                child: CustomRoundedButton(
                  backgroundColor: CustomColors.ORANGE_COLOR,
                  borderColor: CustomColors.ORANGE_COLOR,
                  pressed: () {},
                  text: 'اطلب الان',
                  textColor: Colors.white,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
