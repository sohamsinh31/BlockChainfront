import 'package:flutter/material.dart';
import 'package:hackathonui/Utils/api.dart';
import 'package:hackathonui/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

class BlockchainMiningPage extends StatefulWidget {
  @override
  _BlockchainMiningPageState createState() => _BlockchainMiningPageState();
}

class _BlockchainMiningPageState extends State<BlockchainMiningPage> {
  int _miningPower = 0;
  int _blockchainLength = 0;
  int _miningSpeed = 0;

  @override
  Widget build(BuildContext context) {
    bool nswitch1;
    void get_data() async {
      nswitch1 = await MyData.getData();
    }

    get_data();
    setState(() {
      // bool nswitch1 = await MyData.getData();
      // print(nswitch1);
    });

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MyDrawer(username: "Soham"),
      appBar: AppBar(
        title: "elite".text.bold.make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/logoc.jpg',
              width: 200,
              height: 150,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10),
                Text(
                  'Mining Power: $_miningPower',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  'Blockchain Length: $_blockchainLength',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  'Mining Speed: $_miningSpeed blocks/s',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text('Start Mining'),
                  onPressed: () {
                    setState(() {
                      _miningPower = 100;
                      _blockchainLength = 10;
                      _miningSpeed = 2;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
