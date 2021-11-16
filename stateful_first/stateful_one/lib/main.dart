import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyBetterCounterApp());
}

class MyBetterCounterApp extends StatefulWidget {
  const MyBetterCounterApp({Key? key}) : super(key: key);

  @override
  _MyBetterCounterAppState createState() => _MyBetterCounterAppState();
}

class _MyBetterCounterAppState extends State<MyBetterCounterApp> {
  int counter = 0;

  String? a;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Better Counter App"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("You have pushed the button this many times ✌"),
              Text(
                "$counter",
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: decrement,
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: increment,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
