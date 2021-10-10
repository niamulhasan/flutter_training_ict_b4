import 'package:flutter/material.dart';

class MyReadPage extends StatelessWidget {
  final String news_title;
  final Image thumb;
  const MyReadPage(
      {Key? key, required String this.news_title, required Image this.thumb})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read News'),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              thumb,
              Text(
                news_title,
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "10/10/2021",
                style: TextStyle(fontSize: 14.0),
              ),
              Text("lorem ipsum dfdsaf")
            ],
          )),
    );
  }
}
