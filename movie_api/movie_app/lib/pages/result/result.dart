import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ResultPage extends StatefulWidget {
  final String? search_query;
  const ResultPage({
    Key? key,
    required String? this.search_query,
  }) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late Future<List> movieListFuture;

  Future<List> searchMovie({String? query}) async {
    var response = await http
        .get(Uri.parse("https://imdb-api.com/API/Search/k_7a5d7x6o/$query"));
    if (response.statusCode == 200) {
      var movieData = jsonDecode(response.body);
      List movieList = movieData["results"];
      return movieList;
    } else {
      throw Exception("Error Loading data");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movieListFuture = this.searchMovie(query: widget.search_query!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.search_query!),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: FutureBuilder(
            future: movieListFuture,
            builder: (BuildContext context, AsyncSnapshot<List> sn) {
              if (sn.hasData) {
                List? movies = sn.data;
                return ListView.builder(
                    itemCount: movies!.length,
                    itemBuilder: (BuildContext context, int i) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(movies[i]["image"]),
                        ),
                        title: Text(movies[i]["title"]),
                        subtitle: Text(movies[i]["description"]),
                      );
                    });
              } else if (sn.hasError) {
                return Text("Data loading failed");
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}
