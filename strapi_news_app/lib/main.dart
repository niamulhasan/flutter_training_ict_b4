import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<List> getNews() async {
    http.Response response =
        await http.get(Uri.parse("http://localhost:1337/api/blogs"));
    List data = jsonDecode(response.body)["data"];
    print(data.runtimeType);
    return data;
  }

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
          child: FutureBuilder(
            future: getNews(),
            builder: (BuildContext context, AsyncSnapshot<List> sn) {
              if (sn.hasData) {
                var newsList = sn.data;
                return ListView.builder(
                    itemCount: newsList!.length,
                    itemBuilder: (BuildContext context, int i) => Card(
                          child: Text("${newsList[i]["attributes"]["title"]}"),
                        ));
              } else if (sn.hasError) {
                return Text("Error Success");
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
