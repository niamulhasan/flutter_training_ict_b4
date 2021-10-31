import 'package:flutter/material.dart';

class MyCircleIcon extends StatelessWidget {
  const MyCircleIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle_outlined,
      size: 90.0,
      color: Colors.white,
    );
  }
}
