import 'package:flutter/material.dart';

class MyCrossIcon extends StatelessWidget {
  const MyCrossIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.close_outlined,
      size: 90.0,
      color: Colors.white,
    );
  }
}
