// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import "package:flutter/material.dart";

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            NewTextWidget(),
            Text(_sayac.toString(),
                style: Theme.of(context).textTheme.headline2)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("butona tıklandı ve sayaç değşti $_sayac");
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      _sayac++;
    });
  }
}

class NewTextWidget extends StatelessWidget {
  const NewTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "butona basılma miktarı",
      style: TextStyle(fontSize: 34),
    );
  }
}
