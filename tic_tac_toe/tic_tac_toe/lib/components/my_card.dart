import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Widget? sign;

  const MyCard({Key? key, this.sign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: sign,
    );
  }
}
