import 'package:flutter/material.dart';
import 'package:hackathonui/Utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class UiButton {
  InkWell rounded_button(
          {required double screen_width, required double screen_height,required double radius,required String text}) =>
      InkWell(
        onTap: () => {},
        child: AnimatedContainer(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                gradient: LinearGradient(
                    colors: [
                      Constants.common3,
                      Constants.common4,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    tileMode: TileMode.clamp)),
            duration: Duration(seconds: 1),
            width: screen_width,
            height: screen_height,
            alignment: Alignment.center,
            child: text.text.xl3.extraBold.make()),
      );
}
