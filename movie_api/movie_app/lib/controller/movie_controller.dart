import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/pages/model/movie.dart';

class MovieController {
  Future<List<Movie>> searchMovie({String? query}) async {
    List<Movie> movieObList = [];
    http.Response response = await http
        .get(Uri.parse("https://imdb-api.com/API/Search/k_q54et3t0/$query"));
    if (response.statusCode == 200) {
      Map movieData = jsonDecode(response.body);
      List movieList = movieData["results"];
      for (var movie in movieList) {
        Movie movieObj = Movie(
            movie["id"], movie["image"], movie["title"], movie["description"]);
        movieObList.add(movieObj);
      }
      return movieObList;
    } else {
      throw Exception("Error Loading data");
    }
  }
}
