import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<List> getNews() async {
    http.Response response = await http
        .get(Uri.parse("http://localhost:1337/api/blogs?populate=image"));
    List data = jsonDecode(response.body)["data"];
    print(data[0]["attributes"]["image"]["data"]["attributes"]["url"]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
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
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 120.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "http://localhost:1337${newsList[i]["attributes"]["image"]["data"]["attributes"]["url"]}"))),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.black.withOpacity(0.8),
                                          Colors.black.withOpacity(0.0)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 18.0, left: 18.0),
                                    child: Text(
                                      "${newsList[i]["attributes"]["title"]}",
                                      style: TextStyle(
                                          fontSize: 22.0, color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 80.0, left: 18.0),
                                    child: Text(
                                      "${(newsList[i]["attributes"]["details"]).substring(0, 120)}...",
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
