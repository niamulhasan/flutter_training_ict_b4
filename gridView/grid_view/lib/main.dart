import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Container(
              width: double.infinity,
              height: double.infinity,
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xffBCD1FF),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                              ),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/the_laptop.png",
                                height: 80.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: Text("boo"),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.greenAccent,
                  ),
                  Container(
                    color: Colors.blueAccent,
                  ),
                  Container(
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    color: Colors.redAccent,
                  ),
                  Container(
                    color: Colors.greenAccent,
                  ),
                  Container(
                    color: Colors.blueAccent,
                  ),
                  Container(
                    color: Colors.purpleAccent,
                  )
                ],
              ))),
    );
  }
}
