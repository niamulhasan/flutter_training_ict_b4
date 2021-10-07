import 'package:flutter/material.dart';

class MyListCard extends StatelessWidget {
  final String name;
  final String email;
  final Color background_color;

  const MyListCard(
      {Key? key,
      required String this.name,
      required String this.email,
      required Color this.background_color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: background_color,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://picsum.photos/200"),
        ),
        title: Text(name),
        subtitle: Text(email),
        trailing: Icon(Icons.add),
      ),
    );
  }
}
