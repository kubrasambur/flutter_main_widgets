// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class PopupMenuUsage extends StatefulWidget {
  PopupMenuUsage({Key? key}) : super(key: key);

  @override
  _PopupMenuUsageState createState() => _PopupMenuUsageState();
}

class _PopupMenuUsageState extends State<PopupMenuUsage> {
  String _selectedCity = "Ankara";
  List<String> _cities = ["Ankara", "Istanbul", "Izmir", "Balıkesir", "Van"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String city) {
          setState(() {
            _selectedCity = city;
          });
        },
        // ya icon ya da child güncellnebiliyorç ikisi aynı anda güncellenemez
        icon: Icon(Icons.add),
        //child: Text(_selectedCity),
        itemBuilder: (BuildContext context) {
          /*
          return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",
            ),
            PopupMenuItem(
              child: Text("Bursa"),
              value: "Bursa",
            ),
            PopupMenuItem(
              child: Text("Van"),
              value: "Van",
            )
          ];
          */
          return _cities
              .map((String e) => PopupMenuItem(
                    child: Text(e),
                    value: e,
                  ))
              .toList();
        },
      ),
    );
  }
}
