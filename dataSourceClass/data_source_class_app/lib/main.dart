import 'data_source/MyData.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List data = MyData().data;

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
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int i) => Card(
              elevation: 10.0,
              child: ListTile(
                title: Text("${data[i]['nameEnglish']}"),
                subtitle: Text("${data[i]['lastUpdate']}"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
