import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List> movieFuture;

  Future<List> getMovies() async {
    http.Response response =
        await http.get(Uri.parse("http://localhost:1337/api/movies"));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)["data"];
      print(data.runtimeType);
      return data;
    } else {
      throw Exception("Error Loading data!");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movieFuture = this.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: FutureBuilder(
              future: movieFuture,
              builder: (context, AsyncSnapshot<List> sn) {
                if (sn.hasData) {
                  List? movies = sn.data;
                  return ListView.builder(
                    itemCount: movies!.length,
                    itemBuilder: (context, i) => Card(
                      child: ListTile(
                        title: Text("${movies[i]["attributes"]["title"]}"),
                      ),
                    ),
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
