import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int redPlayer = 20;
  int greenPlayer = 20;

  bool isStarted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: redPlayer > 35 || greenPlayer > 35
            ? FloatingActionButton(
                onPressed: () {
                  setState(() {
                    redPlayer = 20;
                    greenPlayer = 20;
                    isStarted = false;
                  });
                },
                child: Text("Reset"),
              )
            : Text(""),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: redPlayer,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            redPlayer += 1;
                            greenPlayer -= 1;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            redPlayer += 1;
                            greenPlayer -= 1;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.redAccent,
                          child: redPlayer > 35
                              ? Center(
                                  child: Text(
                                    "Red Won!!",
                                    style: TextStyle(
                                        fontSize: 30.0, color: Colors.white),
                                  ),
                                )
                              : Text(""),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: greenPlayer,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            greenPlayer += 1;
                            redPlayer -= 1;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            greenPlayer += 1;
                            redPlayer -= 1;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.greenAccent,
                          child: greenPlayer > 35
                              ? Center(
                                  child: Text(
                                    "Green Won!!",
                                    style: TextStyle(
                                        fontSize: 30.0, color: Colors.white),
                                  ),
                                )
                              : Text(""),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  child: isStarted == false
                      ? Container(
                          color: Colors.purple.withOpacity(0.5),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isStarted = true;
                                });
                              },
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(60.0),
                                  child: Text(
                                    "Start",
                                    style: TextStyle(fontSize: 28.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Text(""),
                )
              ],
            )),
      ),
    );
  }
}
