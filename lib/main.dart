import 'package:ar_core_project/assets_object.dart';
import 'package:ar_core_project/auto_detect_plane.dart';
import 'package:ar_core_project/custom_object.dart';
import 'package:ar_core_project/demo_page.dart';
import 'package:ar_core_project/image_object.dart';
import 'package:ar_core_project/remote_object.dart';
import 'package:flutter/material.dart';

import 'augmented_faces.dart';
import 'augmented_images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AR test"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text(
                "Sphere",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => HelloWorld()));
              },
            ),
            FlatButton(
              child: Text(
                "Auto detect plane",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => AutoDetectPlane()));
              },
            ),
            FlatButton(
              child: Text(
                "CustomObject",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => RemoteObject()));
              },
            ),
            FlatButton(
              child: Text(
                "Image Object",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ImageObjectScreen()));
              },
            ),
            FlatButton(
              child: Text(
                "AugmentedFacesScreen",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => AugmentedFacesScreen()));
              },
            ),
            FlatButton(
              child: Text(
                "Assets objects",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => AssetsObject()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
