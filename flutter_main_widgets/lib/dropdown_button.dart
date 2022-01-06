// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DropDownButtonUsage extends StatefulWidget {
  DropDownButtonUsage({Key? key}) : super(key: key);

  @override
  _DropDownButtonUsageState createState() => _DropDownButtonUsageState();
}

class _DropDownButtonUsageState extends State<DropDownButtonUsage> {
  String? _selectedCity = null;
  List<String> _cities = ["Ankara", "Istanbul", "Izmir", "Balıkesir"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        icon: Icon(Icons.arrow_downward),
        iconSize: 30,
        style: TextStyle(
            fontSize: 30,
            color: Colors.amber[900],
            fontWeight: FontWeight.bold),
        hint: Text(
          "select city",
        ),
        // ignore: prefer_const_literals_to_create_immutables
        /*
        items: [
          DropdownMenuItem(
            child: Text("Ankara Şehri"),
            value: "Ankara",
          ),
          DropdownMenuItem(
            child: Text("İzmir Şehri"),
            value: "İzmir",
          ),
          DropdownMenuItem(
            child: Text("Bursa Şehri"),
            value: "Bursa",
          ),
        ],
        */
        items: _cities
            .map(
              (String c) => DropdownMenuItem(
                child: Text(c),
                value: c,
              ),
            )
            .toList(),
        value: _selectedCity,
        onChanged: (String? yeni) {
          setState(() {
            _selectedCity = yeni;
          });
        },
      ),
    );
  }
}
