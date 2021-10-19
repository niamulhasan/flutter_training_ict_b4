// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyProfilePicture extends StatelessWidget {
  const MyProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Stack(
        children: const [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage("https://picsum.photos/200"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 59.0, left: 59.0),
            child: CircleAvatar(
              radius: 13.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.add,
                  size: 18.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
