// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyCountInfo extends StatelessWidget {
  const MyCountInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "1,487",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                "Posts",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
