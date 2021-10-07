import 'package:flutter/material.dart';
import 'package:routing_app/pages/MySecondPage.dart';
import 'package:routing_app/pages/MyThirdPage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is my Home Page",
                style: TextStyle(fontSize: 26.0),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MySecondPage(),
                    ),
                  );
                },
                child: Text("Go to Second Page"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyThiredPage(),
                  ));
                },
                child: Text("Go to Third Page"),
              )
            ],
          ),
        ));
  }
}
