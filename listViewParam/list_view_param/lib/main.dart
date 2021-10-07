import 'package:flutter/material.dart';

import 'components/MyListCard.dart';

void main() => runApp(MyListViewApp());

class MyListViewApp extends StatelessWidget {
  const MyListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Icon(
              Icons.face,
              size: 44.0,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: const [
              MyListCard(
                name: "Kalam",
                email: "kalam@kmail.com",
                background_color: Colors.redAccent,
              ),
              MyListCard(
                name: "Akkas",
                email: "akkas@amail.com",
                background_color: Colors.greenAccent,
              ),
              MyListCard(
                name: "Salam",
                email: "salam@smail.com",
                background_color: Colors.blueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
