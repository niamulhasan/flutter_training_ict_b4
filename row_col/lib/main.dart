
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyColApp());
}

class MyColApp extends StatelessWidget {
  const MyColApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Col App"),
        ),
        body: Center(
          child: Row(
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Click Me"),),

              ElevatedButton(onPressed: (){}, child: Text("Click Me"),)
            ],
          )
        ),
      ) ,
    );
  }
}
