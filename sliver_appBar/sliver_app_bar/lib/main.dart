import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool isScroled) => [
            SliverAppBar(
              pinned: true,
              leading: Icon(Icons.access_alarm),
              title: Text("I am the Sexy Sliver AppBar"),
              expandedHeight: 200.0,
              flexibleSpace: Image.network(
                "https://picsum.photos/200/300",
                fit: BoxFit.cover,
              ),
            ),
          ],
          body: Center(
            child: Text("Boo"),
          ),
        ),
      ),
    );
  }
}
