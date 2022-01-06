// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text("Text Button"),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Text Button With Icon"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.red, onPrimary: Colors.blue[100]),
          child: Text("elevated button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("elevated Button With Icon"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("outlined button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Outlined Button With Icon"),
          style: OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(color: Colors.lightBlueAccent, width: 2)),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Outlined Button With Icon"),
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 5, color: Colors.red),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        )
      ],
    );
  }
}
