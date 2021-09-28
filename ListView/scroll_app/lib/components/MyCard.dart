import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
          leading: Icon(Icons.alarm),
          title: Text("Hello I am a title"),
          subtitle: Text("I am the subtitle"),
          trailing: Icon(Icons.add)),
    );
  }
}
