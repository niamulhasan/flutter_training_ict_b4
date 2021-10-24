// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyNoteCard extends StatelessWidget {
  final String? title;
  final String? text;

  const MyNoteCard({
    Key? key,
    String? this.title,
    String? this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent.shade100,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Text(
              title ?? "Title goes here",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
              child: Text(
                text ?? "Card Body Text",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
