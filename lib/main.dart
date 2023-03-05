import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hackathonui/Pages/Data/models.dart';
import 'package:hackathonui/Pages/home_page.dart';
import 'package:hackathonui/Pages/login_page.dart';
import 'package:hackathonui/Pages/mine_page.dart';
import 'package:hackathonui/Pages/settings.dart';
import 'package:hackathonui/Pages/signup_page.dart';
import 'package:hackathonui/Pages/test_page.dart';
import 'Utils/routes.dart';
import 'Utils/themes.dart';
import 'package:hackathonui/Pages/api_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    return MaterialApp(
        //home: HomePage(),
        //debugShowCheckedModeBanner: false,
        theme: MyThemes.themedata(context),
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(brightness: Brightness.dark),
        routes: {
          "/": (context) => MyTest(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(username: "soham"),
          MyRoutes.testRoute: (context) => Testing(),
          MyRoutes.minePage: (context) => BlockchainMiningPage(),
          MyRoutes.settings: (context) => SettingsPage(),
          //MyRoutes.apiPage:(context) => apiPage(),
        });
  }
}
