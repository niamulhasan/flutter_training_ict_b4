import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  File? imageFile = null;

  void pickImage() async {
    ImagePicker imageHandle = ImagePicker();
    XFile? image = await imageHandle.pickImage(source: ImageSource.camera);
    print(image!.path);

    setState(() {
      this.imageFile = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageFile == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : CircleAvatar(
                    radius: 200.0, backgroundImage: FileImage(imageFile!)),
            ElevatedButton(
              onPressed: pickImage,
              child: Text("Pick an Image"),
            ),
          ],
        ),
      ),
    );
  }
}
