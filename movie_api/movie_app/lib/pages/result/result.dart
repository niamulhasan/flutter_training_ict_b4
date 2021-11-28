import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_app/controller/movie_controller.dart';
import 'package:movie_app/pages/model/movie.dart';

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
  late Future<List<Movie>> movieListFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movieListFuture =
        MovieController().searchMovie(query: widget.search_query!);
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
            builder: (BuildContext context, AsyncSnapshot<List<Movie>> sn) {
              if (sn.hasData) {
                List<Movie>? movies = sn.data;
                return ListView.builder(
                    itemCount: movies!.length,
                    itemBuilder: (BuildContext context, int i) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(movies[i].thumb!),
                        ),
                        title: Text(movies[i].title!),
                        subtitle: Text(movies[i].details!),
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
