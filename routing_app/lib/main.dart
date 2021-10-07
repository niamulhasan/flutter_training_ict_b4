import 'package:flutter/material.dart';

import 'pages/MyHomePage.dart';
import 'pages/MySecondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}
