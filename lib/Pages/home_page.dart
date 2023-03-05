import 'package:flutter/material.dart';
import 'package:hackathonui/Common/inkwell_button.dart';
import 'package:hackathonui/widgets/appbar.dart';
import 'package:hackathonui/widgets/gredient.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:hackathonui/widgets/drawer.dart';
import 'package:hackathonui/Utils/constants.dart';

class HomePage extends StatefulWidget {
  String username = "";
  HomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 0;

  final String name = "";

  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    print(Constants.isDarkMode);
    return Scaffold(
      appBar: BaseAppBar(appBar: AppBar()),
      body: Container(
        decoration: Gredientes.getBoxDecoration(context),
        child: Row(
          children: [
            Expanded(
              child: Column(children: [
                SizedBox(height: 50),
                Material(
                    color: Constants.color4,
                    borderRadius: BorderRadius.circular(12),
                    child: UiButton().rounded_button(
                        screen_width: screen_width * 0.35,
                        screen_height: screen_height * 0.09,
                        radius: 12)),
                SizedBox(height: 50),
                Material(
                  child: UiButton().rounded_button(
                      screen_width: screen_width * 0.35,
                      screen_height: screen_height * 0.09,
                      radius: 1),
                )
              ]),
            )
          ],
        ),
      ),
      drawer: MyDrawer(username: widget.username),
    );
  }
}
