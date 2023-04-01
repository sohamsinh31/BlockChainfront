import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Constants {
  static bool isDarkMode(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark;
  }

  static String story_block_api = "api.storyblok.com";
  static String host_api = "localhost:3000";
  static var color1 = Color.fromARGB(255, 148, 6, 131);
  static var color2 = Color.fromARGB(255, 140, 4, 219);
  static var color3 = Color.fromARGB(255, 6, 50, 55);
  static var color4 = Color.fromARGB(255, 250, 137, 123);
  static var color5 = Color.fromARGB(255, 201, 31, 150);
  static var color6 = Color.fromARGB(255, 29, 103, 45);
  static var color7 = Color.fromARGB(255, 201, 31, 150);
  static var common1 = Color.fromARGB(255, 56, 11, 64);
  static var common2 = Color.fromARGB(255, 66, 11, 67);
  static var common3 = Color.fromARGB(255, 189, 177, 64);
  static var common4 = Color.fromARGB(255, 241, 85, 244);
  static var lcolor1 = Color.fromARGB(255, 236, 125, 223);
  static var lcolor2 = Color.fromARGB(255, 185, 103, 232);
  static var lcolor3 = Color.fromARGB(255, 93, 220, 234);
  static var lcolor4 = Color.fromARGB(255, 250, 137, 123);
  static var lcolor5 = Color.fromARGB(255, 237, 116, 201);
  static var lcolor6 = Color.fromARGB(255, 128, 238, 152);
  static var lcolor7 = Color.fromARGB(255, 219, 65, 65);
  static var lcolor8 = Color.fromARGB(255, 233, 118, 24);
  static var lcolor9 = Color.fromARGB(255, 238, 205, 20);
}
