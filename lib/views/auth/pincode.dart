import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/auth/complete_register.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:response/response.dart';

class PinCode extends StatelessWidget {
  var pinController = TextEditingController();
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
                height: ResponseUI.instance.setHeight(100),
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
              Text(
                'رمز التحقق',
                style: TextStyle(
                    color: CustomColors.WHIRE_COLOR,
                    fontSize: ResponseUI.instance.setFontSize(17)),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'ادخل رمز التحقق المرسل إالى',
                style: TextStyle(
                    color: CustomColors.WHIRE_COLOR,
                    fontSize: ResponseUI.instance.setFontSize(17)),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '+9663232323323',
                style: TextStyle(
                    color: CustomColors.WHIRE_COLOR,
                    fontSize: ResponseUI.instance.setFontSize(17)),
              ),
              SizedBox(
                height: 20,
              ),
              PinCodeTextField(
                autofocus: false,
                controller: pinController,

                highlight: true,
                highlightColor: Colors.blue,
                defaultBorderColor: Colors.white,
                hasTextBorderColor: Colors.white,
                highlightPinBoxColor: Colors.white,
                maxLength: 4,

                onTextChanged: (text) {},
                onDone: (text) {},
                pinBoxWidth: ResponseUI.instance.setWidth(55),
                pinBoxHeight: ResponseUI.instance.setHeight(50),
                hasUnderline: false,
                pinBoxRadius: 12,
                wrapAlignment: WrapAlignment.spaceAround,
                pinBoxDecoration:
                    ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                pinTextStyle: TextStyle(fontSize: 22.0),
                pinTextAnimatedSwitcherTransition:
                    ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
                pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
//                    highlightAnimation: true,
                highlightAnimationBeginColor: Colors.black,
                highlightAnimationEndColor: Colors.white12,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'إعادة ارسال في 1:30',
                style: TextStyle(
                    color: CustomColors.WHIRE_COLOR,
                    fontSize: ResponseUI.instance.setFontSize(17)),
              ),
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
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              insetPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              content: Container(
                                width: MediaQuery.of(context).size.width,
                                height: ResponseUI.instance.setHeight(130),
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                          padding: EdgeInsets.all(0),
                                          icon: Center(
                                            child: Icon(
                                              Icons.check_circle,
                                              color: CustomColors.PRIMARY_GREEN,
                                              size: 50,
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (ctx) =>
                                                        CompleteRegister()));
                                          }),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'تم تأكيد الرقم بنجاح',
                                        style: TextStyle(
                                            fontSize: ResponseUI.instance
                                                .setFontSize(22)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ));
                  },
                  child: Text('التالي'),
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
