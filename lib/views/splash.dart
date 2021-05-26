import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (ctx) => Login())));
  }

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
        child: Center(
          child: Text(
            'مشوارك',
            style: TextStyle(
                color: CustomColors.WHIRE_COLOR,
                fontSize: ResponseUI.instance.setFontSize(50)),
          ),
        ),
      ),
    );
  }
}
