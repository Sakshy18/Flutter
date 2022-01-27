import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true ,
        title: Text(
          "$total",
          style: TextStyle(
            color: Colors.brown[200],
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400,
            fontSize: 20,
            letterSpacing: 10,

          ),
        ),
      ),
      body: Center(
          child: RaisedButton.icon(
            elevation: 80,
            onPressed: () {
              setState(() {
                total++;
              });
            },
            icon: Icon(
              Icons.emoji_emotions) ,
              label: Text("Happiness"),
              color: Colors.brown[200],

