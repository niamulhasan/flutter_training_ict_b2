import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  File? imagePath = null;

  void pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? theImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imagePath = File(theImage!.path);
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
          children: [
            imagePath == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Image.file(imagePath!),
            ElevatedButton(
              onPressed: pickImage,
              child: Text("Select an Image"),
            ),
          ],
        ),
      ),
    );
  }
}
