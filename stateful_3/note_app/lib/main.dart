import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/MyNoteCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String exdata = "Initial Text";
  List<Map> notes = [
    {"title": "Example 1 title", "text": "Example 1 text"},
    {"title": "Example 2 title", "text": "Example 2 text"},
  ];

  TextEditingController titleControl = TextEditingController();
  TextEditingController textControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Notes'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "$exdata",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              Expanded(
                  flex: 8,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: notes.length,
                      itemBuilder: (BuildContext context, int index) =>
                          MyNoteCard(
                            title: notes[index]["title"],
                            text: notes[index]["text"],
                          ))),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    TextField(
                      controller: titleControl,
                    ),
                    TextField(
                      controller: textControl,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          notes.add({
                            "title": "${titleControl.text}",
                            "text": "${textControl.text}"
                          });
                        });
                      },
                      child: Text("Add Note"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
