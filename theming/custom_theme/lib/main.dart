import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark().copyWith(
        cardColor: Color.lerp(Colors.lightBlue, Colors.white, 0.2),
        cardTheme: ThemeData.dark().cardTheme?.copyWith(
              color: Color.lerp(Colors.lightBlue, Colors.black, 0.1),
              margin: EdgeInsets.all(20.0),
              elevation: 0.0,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  side: BorderSide(color: Colors.white24, width: 1)),
            ),
      ),
      // theme: ThemeData.dark().copyWith(
      //   appBarTheme: AppBarTheme(
      //     color: Colors.deepOrange,
      //   ),
      // ),
      home: Scaffold(
        drawer: Drawer(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.ac_unit_sharp),
              title: Text("I am an item"),
            ),
          ),
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.access_alarm_rounded,
                color: Colors.redAccent,
              ),
            ),
          ),
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, i) => Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.ac_unit_rounded),
              ),
              title: Text("I am tile number $i"),
              subtitle: Text("I am subtitle number $i"),
              trailing: Builder(
                builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(
                    Icons.access_alarm_rounded,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
