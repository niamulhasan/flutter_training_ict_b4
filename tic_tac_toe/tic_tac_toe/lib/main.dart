import 'package:flutter/material.dart';

import 'components/global/my_circle_icon.dart';
import 'components/global/my_cross_icon.dart';
import 'components/global/my_empty_icon.dart';
import 'components/my_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text(
                      "Turn: Circle",
                      style: TextStyle(
                        fontSize: 33.0,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: [
                      // row one
                      MyCard(
                        sign: MyCircleIcon(),
                      ),
                      MyCard(
                        sign: MyCrossIcon(),
                      ),
                      MyCard(
                        sign: MyEmptyIcon(),
                      ),
                      //row two
                      MyCard(
                        sign: MyCircleIcon(),
                      ),
                      MyCard(
                        sign: MyCrossIcon(),
                      ),
                      MyCard(
                        sign: MyCircleIcon(),
                      ),
                      //row three
                      MyCard(
                        sign: MyCircleIcon(),
                      ),
                      MyCard(
                        sign: MyCrossIcon(),
                      ),
                      MyCard(
                        sign: MyEmptyIcon(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
