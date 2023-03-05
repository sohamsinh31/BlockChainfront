import 'package:flutter/material.dart';
import 'package:hackathonui/Utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(children: [
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: "HomePage".text.make()),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  },
                  child: "LoginPage".text.make(),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.signUP);
                  },
                  child: "SignUpPage".text.make(),
                ),
              ),
              // Center(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, MyRoutes.apiPage);
              //     },
              //     child: "apiPage".text.make(),
              //   ),
              // ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.testRoute);
                  },
                  child: "TestPage".text.make(),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.minePage);
                  },
                  child: "minepage".text.make(),
                ),
              ),
              // Center(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, MyRoutes.testApi);
              //     },
              //     child: "apitest".text.make(),
              //   ),
              // ),
            ]),
          ),
        ),
      ),
    );
  }
}
