import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List> getMovies() async {
  var response = await http
      .get(Uri.parse('https://imdb-api.com/en/API/Top250Movies/k_7a5d7x6o'));
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['items'];
  } else {
    throw Exception("Error!");
  }
}

void main() {
  runApp(MyApiApp());
}

class MyApiApp extends StatefulWidget {
  const MyApiApp({Key? key}) : super(key: key);

  @override
  State<MyApiApp> createState() => _MyApiAppState();
}

class _MyApiAppState extends State<MyApiApp> {
  late Future<List> movieListFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.movieListFuture = getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Top 200 Movies"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: FutureBuilder(
            future: movieListFuture,
            builder: (BuildContext context, AsyncSnapshot<List?> sn) {
              if (sn.hasData) {
                List? movieData = sn.data;
                return ListView.builder(
                  itemCount: movieData!.length,
                  itemBuilder: (BuildContext context, int i) => Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(movieData[i]["image"]),
                      ),
                      title: Text(movieData[i]["title"]),
                      subtitle: Text(movieData[i]["crew"]),
                    ),
                  ),
                );
              } else if (sn.hasError) {
                return Text("Error!");
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
