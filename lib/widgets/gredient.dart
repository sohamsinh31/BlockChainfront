import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hackathonui/Utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class Gredientes {
  static BoxDecoration getBoxDecoration(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return BoxDecoration(
      gradient: RadialGradient(
        colors: [
          Constants.lcolor1,
          Constants.lcolor2,
          Constants.lcolor5,
          Colors.white,
        ],
        center: const FractionalOffset(0.0, 0.0),
        focal: const FractionalOffset(1.0, 0.0),
        radius: 2,
        tileMode: TileMode.clamp,
      ),
    );
  }
}
