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
        backgroundColor: Colors.black,
        centerTitle: true ,
        title: Text(
          "Rainbow Colors"

        ),
      ),
      body: Row (
        children: [
          Container(
            color: Colors.deepPurple,
            height: 50,
            width: 50,
            child: Text("v"),
          ),

          Container(
          color: Colors.indigo,
          height: 50,
          width: 50,
          child: Text("i"),
        ),

     Container(
     color: Colors.blue,
     height: 50,
     width: 50,
     child: Text("b"),
     ),

     Container(
     color: Colors.green,
     height: 50,
     width: 50,
     child: Text("g"),
     ),

    Container(
    color: Colors.yellow,
    height: 50,
    width: 50,
    child: Text("y"),
    ),

    Container(
    color: Colors.orange,
    height: 50,
    width: 50,
    child: Text("o"),
    ),

    Container(
    color: Colors.red,
    height: 50,
    width: 50,
    child: Text("r"),
    ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.brown,
      //   onPressed: () {
      //     setState(() {
      //       total--;
      //     });
      //   },
      //   child: Icon(
      //     Icons.attach_money_outlined,
      //     color: Colors.brown[200],
      //   ),
      // ),
    );
  }
}

