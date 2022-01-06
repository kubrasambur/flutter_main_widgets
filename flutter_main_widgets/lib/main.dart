// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import "package:flutter/material.dart";
import 'package:flutter_main_widgets/image_widgets.dart';
import 'package:flutter_main_widgets/my_counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
            headline2:
                TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("image examples"),
        ),
        body: ImageExamples(),
      ),
    );
  }
}
