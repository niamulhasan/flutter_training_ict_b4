import 'package:flutter/material.dart';

import 'modules/notes/views/add_note_view.dart';
import 'modules/notes/views/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeView(),
      // home: AddNoteView(),
    );
  }
}
