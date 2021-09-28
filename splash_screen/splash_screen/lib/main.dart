import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MySplashScreenApp());
}

class MySplashScreenApp extends StatelessWidget {
  const MySplashScreenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xff221F1E),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 330.0,
                  child: Image.asset('assets/images/splash_image_1.png')),
              const Text(
                "Achive Higher Goals",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w500),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                child: Text(
                  "By boosting your productivity we help you achive higher goals",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Boo")),
            ],
          ),
        ),
      ),
    );
  }
}
