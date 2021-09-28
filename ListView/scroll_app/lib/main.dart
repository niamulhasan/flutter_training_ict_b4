import 'package:flutter/material.dart';

//components
import 'components/MyCard.dart';

void main() {
  runApp(MyScrollApp());
}

class MyScrollApp extends StatelessWidget {
  const MyScrollApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scrolling App"),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
              ],
            )),
      ),
    );
  }
}
