import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/auth/pincode.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:response/response.dart';

class Login extends StatelessWidget {
  List<String> numbers = ['966', '20'];

  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [CustomColors.GREEN_GRAD1, CustomColors.GREEN_GRAD2])),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: ResponseUI.instance.setHeight(210),
              ),
              Text(
                'مشوارك',
                style: TextStyle(
                    color: CustomColors.WHIRE_COLOR,
                    fontSize: ResponseUI.instance.setFontSize(50)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'ادخل رقم الجوال',
                    style: TextStyle(
                        color: CustomColors.WHIRE_COLOR,
                        fontSize: ResponseUI.instance.setFontSize(17)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: CustomColors.WHIRE_COLOR),
                  child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        fillColor: CustomColors.WHIRE_COLOR,
                        filled: true,
                        border: InputBorder.none,
                        prefixIcon: DropdownButton(
                          value: '966',
                          underline: Container(),
                          items: numbers
                              .map(
                                (e) => DropdownMenuItem<String>(
                                    child: Text(
                                      e,
                                    ),
                                    value: e),
                              )
                              .toList(),
                          onChanged: (v) {},
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: ResponseUI.instance.setWidth(180),
                height: ResponseUI.instance.setHeight(48),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  color: CustomColors.ORANGE_COLOR,
                  textColor: CustomColors.WHIRE_COLOR,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => PinCode()));

                    // if (phoneController.text.isEmpty) {
                    //   return;
                    // }
                  },
                  child: Text('تسجيل الدخول'),
                ),
              ),
              Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'استخدامك لهذا التطبيق يعني موافقتك على ',
                          style: TextStyle(
                              fontFamily: 'Cairo', fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'سياسة وشروط الاستخدام',
                                style: TextStyle(
                                    color: CustomColors.ORANGE_COLOR)),
                          ],
                        ),
                      ))),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
