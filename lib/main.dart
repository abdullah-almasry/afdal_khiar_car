
import 'package:afdal_khiar_car/widget/constans.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'functions/localizations.dart';
import 'home.dart';
import 'screens/choosePlan.dart';
import 'screens/login.dart';
import 'screens/payment/Delivery.dart';
import 'screens/pricing.dart';
import 'screens/sign_up.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() {
  runApp(DevicePreview(
    enabled: true,


      builder:(context)=> MyApp()));
}
const en = Locale("en", "UK");
const ar = Locale("ar", "AE");
var currentLocale = en;
var currentLanguage = "English";
TextDirection currentTextDir = TextDirection.ltr;

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState state =
    context.findAncestorStateOfType<_MyAppState>();
    state.changeLanguage(newLocale);
  }
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;

  changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }
  changeLanguageLtr(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    /*    builder: (BuildContext context, Widget child) {
      return  Directionality(
          textDirection: TextDirection.ltr,
          child:  Builder(
          builder: (BuildContext context) {
        return  MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: 1.0,
          ),child: Login(),);}));

      },*/
      debugShowCheckedModeBanner: false,
      locale: _locale,
      title: 'Afdal Khiar',
      theme: ThemeData(
        backgroundColor: KBackGroundColor,
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),

      supportedLocales: [
        Locale('ar'),
        Locale("en"),

      ],


      localizationsDelegates: [

        AppLocalizations.delegate,

        GlobalMaterialLocalizations.delegate,

        GlobalWidgetsLocalizations.delegate,



      ],

      home: Login(),
    );
  }
}


