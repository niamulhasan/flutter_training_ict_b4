import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:instagram/data/MyData.dart';

import 'components/MyAppBarMain.dart';
import 'components/appBar/MyCountInfo.dart';
import 'components/appBar/MyProfilePicture.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Map> the_images = MyData().data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
      ),
      title: 'Material App',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool isScrolled) => [
              MyAppBarMain(),
            ],
            body: Container(
              height: double.infinity,
              width: double.infinity,
              child: GridView.builder(
                itemCount: the_images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, i) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.network("${the_images[i]['image_uri']}"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
