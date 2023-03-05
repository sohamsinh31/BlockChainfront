import 'package:flutter/material.dart';
import 'package:hackathonui/Utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key? key,required this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Constants.color1,
                Constants.color2,
                // Constants.color3,
              ],
              begin: const FractionalOffset(0.0, 1.0),
              end: const FractionalOffset(1.0, 2.0),
              tileMode: TileMode.clamp),
        )),
        title: "elite".text.bold.make(),
        centerTitle: true,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
