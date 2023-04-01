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
      gradient: LinearGradient(
        colors: [
          Constants.common2,
          Constants.common1,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        // radius: 2,
        tileMode: TileMode.clamp,
      ),
    );
  }
}
