import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

var brightness = SchedulerBinding.instance.window.platformBrightness;
bool isDarkMode = brightness == Brightness.dark;

class MyThemes {
  var currentTheme;
  static ThemeData themedata(BuildContext context) => ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
        iconTheme: Theme.of(context).iconTheme,
        titleTextStyle:
            TextStyle(color: isDarkMode ? Colors.black : Colors.black),
      ),
      platform: TargetPlatform.iOS,
      primarySwatch: Colors.deepPurple,
      primaryColorLight: Colors.white,
      primaryTextTheme: GoogleFonts.poppinsTextTheme(),
      );

  static Color creamcolor = Color(0xfff5f5f5);
  static Color bluishDark = Color(0xff403b58);
}
