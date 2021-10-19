// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'appBar/MyCountInfo.dart';
import 'appBar/MyProfilePicture.dart';

class MyAppBarMain extends StatelessWidget {
  const MyAppBarMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      backgroundColor: Colors.transparent,
      title: Center(
        child: Text(
          "andrewwmundy",
          style: TextStyle(color: Colors.black),
        ),
      ),
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: MyProfilePicture(),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Container(
                          child: Row(
                            children: [
                              MyCountInfo(),
                              MyCountInfo(),
                              MyCountInfo(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.greenAccent,
                child: Text("Two"),
              )
            ],
          ),
        ),
      ),
      bottom: TabBar(
        indicatorColor: Colors.black,
        labelColor: Colors.black,
        tabs: [
          Tab(
            child: Icon(Icons.grid_on_sharp),
          ),
          Tab(
            child: Icon(Icons.account_box_outlined),
          ),
        ],
      ),
    );
  }
}
