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
  //row 1
  int b11 = 0;
  int b12 = 0;
  int b13 = 0;
  //row 2
  int b21 = 0;
  int b22 = 0;
  int b23 = 0;
  //row 3
  int b31 = 0;
  int b32 = 0;
  int b33 = 0;

  bool turnIsCross = false;
  bool isEnd = false;

  // won = 0 ->draw
  // won = 1 -> cross won
  // won = 2 -> circle won
  int wonStatus = 0;

  void reset() {
    //row 1
    int b11 = 0;
    int b12 = 0;
    int b13 = 0;
    //row 2
    int b21 = 0;
    int b22 = 0;
    int b23 = 0;
    //row 3
    int b31 = 0;
    int b32 = 0;
    int b33 = 0;

    bool turnIsCross = false;
    bool isEnd = false;

    // won = 0 ->draw
    // won = 1 -> cross won
    // won = 2 -> circle won
    int wonStatus = 0;
  }

  void checkStatus() {
    //cross won check
    //row check
    if (b11 * b12 * b13 == 1 || b21 * b22 * b23 == 1 || b31 * b32 * b33 == 1) {
      wonStatus = 1;
      isEnd = true;
      print("cross r");
    }
    //column check
    if (b11 * b21 * b31 == 1 || b12 * b22 * b32 == 1 || b13 * b23 * b33 == 1) {
      wonStatus = 1;
      isEnd = true;
      print("cross c");
    }

    //golla won check
    //row check
    if (b11 * b12 * b13 == 8 || b21 * b22 * b23 == 8 || b31 * b32 * b33 == 8) {
      wonStatus = 2;
      isEnd = true;
      print("golla r");
    }
    //column check
    if (b11 * b21 * b31 == 8 || b12 * b22 * b32 == 8 || b13 * b23 * b33 == 8) {
      wonStatus = 2;
      isEnd = true;
      print("golla c");
    }

    //cross won check
    //right diagonal check
    if (b11 * b22 * b33 == 1 || b13 * b22 * b31 == 1) {
      wonStatus = 1;
      isEnd = true;
      print("cross d");
    }
    //golla won check
    //diagonal check
    if (b11 * b22 * b33 == 8 || b13 * b22 * b31 == 8) {
      wonStatus = 2;
      isEnd = true;
      print("golla d");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: isEnd
              ? FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      print("reset pressed");
                      //row 1
                      b11 = 0;
                      b12 = 0;
                      b13 = 0;
                      //row 2
                      b21 = 0;
                      b22 = 0;
                      b23 = 0;
                      //row 3
                      b31 = 0;
                      b32 = 0;
                      b33 = 0;

                      turnIsCross = false;
                      isEnd = false;

                      // won = 0 ->draw
                      // won = 1 -> cross won
                      // won = 2 -> circle won
                      wonStatus = 0;
                    });
                  },
                  child: Icon(Icons.replay_outlined),
                )
              : Text(""),
          body: Stack(
            children: [
              Container(
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
                          "Turn: ${turnIsCross ? "Cross" : "Circle"}",
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
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (b11 == 0) {
                                  if (turnIsCross) {
                                    b11 = 1;
                                  } else {
                                    b11 = 2;
                                  }
                                  turnIsCross = !turnIsCross;
                                  checkStatus();
                                }
                              });
                            },
                            child: MyCard(
                              sign: b11 == 0
                                  ? MyEmptyIcon()
                                  : b11 == 1
                                      ? MyCrossIcon()
                                      : MyCircleIcon(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (b12 == 0) {
                                  if (turnIsCross) {
                                    b12 = 1;
                                  } else {
                                    b12 = 2;
                                  }
                                  turnIsCross = !turnIsCross;
                                  checkStatus();
                                }
                              });
                            },
                            child: MyCard(
                              sign: b12 == 0
                                  ? MyEmptyIcon()
                                  : b12 == 1
                                      ? MyCrossIcon()
                                      : MyCircleIcon(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (b13 == 0) {
                                  if (turnIsCross) {
                                    b13 = 1;
                                  } else {
                                    b13 = 2;
                                  }
                                  turnIsCross = !turnIsCross;
                                  checkStatus();
                                }
                              });
                            },
                            child: MyCard(
                              sign: b13 == 0
                                  ? MyEmptyIcon()
                                  : b13 == 1
                                      ? MyCrossIcon()
                                      : MyCircleIcon(),
                            ),
                          ),
                          //row two
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (b21 == 0) {
                                  if (turnIsCross) {
                                    b21 = 1;
                                  } else {
                                    b21 = 2;
                                  }
                                  turnIsCross = !turnIsCross;
                                  checkStatus();
                                }
                              });
                            },
                            child: MyCard(
                              sign: b21 == 0
                                  ? MyEmptyIcon()
                                  : b21 == 1
                                      ? MyCrossIcon()
                                      : MyCircleIcon(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (b22 == 0) {
                                  if (turnIsCross) {
                                    b22 = 1;
                                  } else {
                                    b22 = 2;
                                  }
                                  turnIsCross = !turnIsCross;
                                  checkStatus();
                                }
                              });
                            },
                            child: MyCard(
                              sign: b22 == 0
                                  ? MyEmptyIcon()
                                  : b22 == 1
                                      ? MyCrossIcon()
                                      : MyCircleIcon(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (b23 == 0) {
                                  if (turnIsCross) {
                                    b23 = 1;
                                  } else {
                                    b23 = 2;
                                  }
                                  turnIsCross = !turnIsCross;
                                  checkStatus();
                                }
                              });
                            },
                            child: MyCard(
                              sign: b23 == 0
                                  ? MyEmptyIcon()
                                  : b23 == 1
                                      ? MyCrossIcon()
                                      : MyCircleIcon(),
                            ),
                          ),
                          //row three
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (b31 == 0) {
                                  if (turnIsCross) {
                                    b31 = 1;
                                  } else {
                                    b31 = 2;
                                  }
                                  turnIsCross = !turnIsCross;
                                  checkStatus();
                                }
                              });
                            },
                            child: MyCard(
                              sign: b31 == 0
                                  ? MyEmptyIcon()
                                  : b31 == 1
                                      ? MyCrossIcon()
                                      : MyCircleIcon(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (b32 == 0) {
                                  if (turnIsCross) {
                                    b32 = 1;
                                  } else {
                                    b32 = 2;
                                  }
                                  turnIsCross = !turnIsCross;
                                  checkStatus();
                                }
                              });
                            },
                            child: MyCard(
                              sign: b32 == 0
                                  ? MyEmptyIcon()
                                  : b32 == 1
                                      ? MyCrossIcon()
                                      : MyCircleIcon(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (b33 == 0) {
                                  if (turnIsCross) {
                                    b33 = 1;
                                  } else {
                                    b33 = 2;
                                  }
                                  turnIsCross = !turnIsCross;
                                  checkStatus();
                                }
                              });
                            },
                            child: MyCard(
                              sign: b33 == 0
                                  ? MyEmptyIcon()
                                  : b33 == 1
                                      ? MyCrossIcon()
                                      : MyCircleIcon(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text(
                          "Won: ${wonStatus == 0 ? "Nobody" : wonStatus == 1 ? "Cross" : "Circle"}",
                          style: TextStyle(
                            fontSize: 33.0,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: isEnd
                    ? Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.redAccent.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            "Won: ${wonStatus == 0 ? "Nobody" : wonStatus == 1 ? "Cross" : "Circle"}",
                            style: TextStyle(
                              fontSize: 33.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : Text(""),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
