import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/utils/custom_functions.dart';
import 'package:captain_mar/views/homeScreens/parcel/complete_request_parcel.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:captain_mar/views/widgets/parcel_textfield.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

class RequestParcel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: SingleChildScrollView(
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
                'بيانات الطرد',
                style: TextStyle(
                  fontSize: ResponseUI.instance.setFontSize(17),
                  color: CustomColors.ORANGE_COLOR,
                ),
              ),
              ParcelTextField(
                label: 'عدد المندوبين',
                controller: TextEditingController(),
              ),
              ParcelTextField(
                label: 'عدد الطرود',
                controller: TextEditingController(),
              ),
              Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: ParcelTextField(
                        label: 'وقت استلام الطرد',
                        icon: Icon(Icons.timer),
                        controller: TextEditingController(),
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('اطلب الان'),
                          Checkbox(value: true, onChanged: (v) {})
                        ],
                      ))
                ],
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
                label: 'سيارة مبرحة',
                icon: Checkbox(value: true, onChanged: (v) {}),
                controller: TextEditingController(),
              ),
              ParcelTextField(
                label: 'سيارة كبيرة',
                icon: Checkbox(value: false, onChanged: (v) {}),
                controller: TextEditingController(),
              ),
              ParcelTextField(
                label: 'وصف الطرد',
                controller: TextEditingController(),
              ),
              ParcelTextField(
                label: 'صورة الطرد',
                icon: Icon(Icons.camera_alt),
                controller: TextEditingController(),
              ),
              ParcelTextField(
                label: 'قيمة الطرد',
                controller: TextEditingController(),
              ),
              ParcelTextField(
                label: 'جهة دفع رسوم التوصيل',
                icon: Icon(Icons.arrow_drop_down),
                controller: TextEditingController(),
              ),
              ParcelTextField(
                label: 'طريقة دفع رسوم التوصيل',
                icon: Icon(Icons.arrow_drop_down),
                controller: TextEditingController(),
              ),
              ParcelTextField(
                label: 'ملاحظات توصيل اضافية',
                controller: TextEditingController(),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 48,
                child: CustomRoundedButton(
                  backgroundColor: CustomColors.ORANGE_COLOR,
                  borderColor: CustomColors.ORANGE_COLOR,
                  pressed: () {
                    CustomFunctions.navigateScreen(
                        context: context,
                        nextScreen: CompleteParcelRequest(),
                        nextScreenTitle: 'طلب طرد');
                  },
                  text: 'التالي',
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
