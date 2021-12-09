import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("Boo"),
              // pinned: true,
              leading: Icon(Icons.call),
              floating: true,
              expandedHeight: 200,
              flexibleSpace: Image.network(
                "https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554__340.jpg",
                fit: BoxFit.cover,
                height: 200.0,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, i) => Card(
                      child: ListTile(
                        title: Text("I am title no $i"),
                        leading: Icon(Icons.person),
                        subtitle: Text("I am subtitle no $i"),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
