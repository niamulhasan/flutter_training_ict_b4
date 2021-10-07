import 'package:flutter/material.dart';
import 'package:routing_app/pages/MyHomePage.dart';
import 'package:routing_app/pages/MyThirdPage.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is my Second Page",
                style: TextStyle(fontSize: 26.0),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Back"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyThiredPage(),
                      ));
                },
                child: Text("Go to third page"),
              )
            ],
          ),
        ));
  }
}
