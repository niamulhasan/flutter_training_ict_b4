class Movie {
  String? id;
  String? thumb;
  String? title;
  String? details = "Not found";
  List? cast = null;

  Movie(this.id, this.thumb, this.title, this.details, [this.cast]);
}
