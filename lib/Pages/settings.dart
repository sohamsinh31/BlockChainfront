import 'package:flutter/material.dart';
import 'package:hackathonui/Utils/api.dart';


class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  bool nswitch1 = false;
  bool nswitch2 = false;
  String nss = "";
  bool value = true;
  void get_data() async {
    print("RAN");
    bool nswitch = await MyData.getData();
    bool nswitchh = await MyData.getSwitches();
    nss = nswitch1.toString();
    print(nss);

    setState(() {
      nswitch1 = nswitch;
      nswitch2 = nswitchh;
    });
  }

  @override
  void initState() {
    super.initState();
    print("INIT");
    get_data();
  }

  @override
  Widget build(BuildContext context) {
    //print(nss);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SwitchListTile(
              title: Text('Notifications'),
              value: nswitch1,
              onChanged: (value) {
                setState(() {
                  nswitch1 = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Dark Mode'),
              value: nswitch2,
              onChanged: (value) {
                setState(() {
                  nswitch2 = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
