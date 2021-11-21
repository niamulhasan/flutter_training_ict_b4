import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List> getBooks() async {
  http.Response res =
      await http.get(Uri.parse("http://alquranbd.com/api/hadith"));
  return jsonDecode(res.body);
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List> booksListFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.booksListFuture = getBooks();
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
                future: this.booksListFuture,
                builder:
                    (BuildContext context, AsyncSnapshot<List> mySnapshot) {
                  if (mySnapshot.hasData) {
                    List? books = mySnapshot.data;
                    return ListView.builder(
                        itemCount: books!.length,
                        itemBuilder: (BuildContext context, int i) => Card(
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: Text(books[i]["id"]),
                                ),
                                title: Text(books[i]["nameEnglish"]),
                                subtitle: Text(books[i]["nameBengali"]),
                              ),
                            ));
                  } else if (mySnapshot.hasError) {
                    return Text("Error Loading data");
                  }
                  return CircularProgressIndicator();
                }),
          ),
        ),
      ),
    );
  }
}
