import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/utils/fonts.dart';
import 'package:captain_mar/viewModel/screen_title_provider.dart';
import 'package:captain_mar/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:response/response.dart';

import 'Locale/appLocalization.dart';
import 'Locale/localizationProvider.dart';

main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: LocalProvider()),
      ChangeNotifierProvider.value(value: ScreenTitleProvider())
    ],
    child: MyMaterial(),
  ));
}

class MyMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locProvider = Provider.of<LocalProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: locProvider.appLocal,
      theme: ThemeData(
          fontFamily: CustomFonts.AR_FONT,
          primaryColor: CustomColors.PRIMARY_GREEN),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ar', ''),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: Response(child: Splash()),
    );
  }
}
