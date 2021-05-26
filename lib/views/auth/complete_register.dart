import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/homeScreens/home.dart';
import 'package:captain_mar/views/homeScreens/home_order/index.dart';
import 'package:captain_mar/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

class CompleteRegister extends StatelessWidget {
  List<String> cities = ['Saudi arabia', 'Cairo'];
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: ResponseUI.instance.setHeight(80),
              ),
              Text(
                'إكمال عملية التسجيل',
                style: TextStyle(
                    color: CustomColors.WHIRE_COLOR,
                    fontSize: ResponseUI.instance.setFontSize(22)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'الاسم كامل',
                    style: TextStyle(
                        color: CustomColors.WHIRE_COLOR,
                        fontSize: ResponseUI.instance.setFontSize(15)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField(),
              SizedBox(
                height: 20,
              ),

              /////////////////////
              Row(
                children: [
                  Text(
                    'رقم الجوال',
                    style: TextStyle(
                        color: CustomColors.WHIRE_COLOR,
                        fontSize: ResponseUI.instance.setFontSize(15)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField(),
              SizedBox(
                height: 20,
              ),
              ////////////////////////////////

              Row(
                children: [
                  Text(
                    'البريد الالكتروني',
                    style: TextStyle(
                        color: CustomColors.WHIRE_COLOR,
                        fontSize: ResponseUI.instance.setFontSize(15)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField(),
              SizedBox(
                height: 20,
              ),
              ////////////////////////////
              Row(
                children: [
                  Text(
                    'المدينة',
                    style: TextStyle(
                        color: CustomColors.WHIRE_COLOR,
                        fontSize: ResponseUI.instance.setFontSize(15)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: DropdownButton(
                  isExpanded: true,
                  value: 'Saudi arabia',
                  underline: Container(),
                  items: cities
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
              ),

              SizedBox(
                height: 20,
              ),
              ///////////////////////////
              Row(
                children: [
                  Text(
                    'العنوان',
                    style: TextStyle(
                        color: CustomColors.WHIRE_COLOR,
                        fontSize: ResponseUI.instance.setFontSize(15)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField(),
              SizedBox(
                height: 20,
              ),

              /////////////////////////
              Row(
                children: [
                  Text(
                    'كلمة المرور',
                    style: TextStyle(
                        color: CustomColors.WHIRE_COLOR,
                        fontSize: ResponseUI.instance.setFontSize(15)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: ResponseUI.instance.screenWidth,
                height: ResponseUI.instance.setHeight(48),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  color: CustomColors.ORANGE_COLOR,
                  textColor: CustomColors.WHIRE_COLOR,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => Home()));
                  },
                  child: Text('تسجيل'),
                ),
              ),
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
