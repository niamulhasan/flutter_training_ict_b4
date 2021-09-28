import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
