import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MySplashScreen());
}

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff171C3D), Color(0xff010310)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/splash_hero.png",
                  width: 320.0,
                ),
                const Text(
                  "Study Simple",
                  style: TextStyle(
                      fontSize: 28.00,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "You can study anytime, anywhere, any situation",
                  style: TextStyle(fontSize: 12.00, color: Colors.white),
                )
              ],
            )),
      ),
    );
  }
}
