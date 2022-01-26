import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          //Appbar designing
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "VIBGYOR DISPLAY",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          )),
      body: Row(                                                  //change Row to Column for making the 2nd design and change width to height
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.purple[400],
              width: 60,
              child: Text("V"),
            ),
            Container(
              color: Colors.purple[900],
              width: 60,
              child: Text("I"),
            ),
            Container(
              color: Colors.blue,
              width: 60,
              child: Text("B"),
            ),
            Container(
              color: Colors.green,
              width: 60,
              child: Text("G"),
            ),
            Container(
              color: Colors.yellowAccent,
              width: 60,
              child: Text("Y"),
            ),
            Container(
              color: Colors.orange,
              width: 60,
              child: Text("O"),
            ),
            Container(
              color: Colors.red,
              width: 60,
              child: Text("R"),
            ),
          ]),
    );
  }
}
