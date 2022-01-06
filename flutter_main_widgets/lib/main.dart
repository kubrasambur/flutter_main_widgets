// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import "package:flutter/material.dart";
import 'package:flutter_main_widgets/image_widgets.dart';
import 'package:flutter_main_widgets/my_counter_page.dart';

import 'dropdown_button.dart';
import 'main_button_types.dart';
import 'popup_menu.dart';

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
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                primary: Colors.red[900], onSurface: Colors.yellow)),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue[200]))),
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
            headline2:
                TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("DropDown button"),
        ),
        body: DropDownButtonUsage(),
      ),
    );
  }
}
