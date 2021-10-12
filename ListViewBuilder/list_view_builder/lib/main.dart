import 'package:flutter/material.dart';

import 'data_source/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Map> list_of_data = MyData().data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Builder'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: list_of_data.length,
            itemBuilder: (BuildContext context, int i) => Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text("${list_of_data[i]['id']}"),
                ),
                title: Text(list_of_data[i]['nameEnglish']),
                subtitle: Text(list_of_data[i]['nameBengali']),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
