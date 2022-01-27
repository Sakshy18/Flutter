//Here is the simplest way of how u can change theme of your app,here I have used 2 colors ie. white and black which are changing accordingly
//I have set them in variable namesly col1 and col2 to make it easier to write them wherever we want to change colors
//purple is a constant color here
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

  bool theme = false;        //making bool false is giving our app one color ie col1=>white
  var col1 = Colors.white;
  var col2 = Colors.black; //saving colors in  variable to add them easily everywhere,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme ? col1 : col2,  //ternary operator 
      appBar: AppBar(                       //Appbar designing
         
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text(
            "Theme Changing App",
            style: TextStyle(
              color: theme ? col1 : col2,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          )),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(6),
                color: Colors.purple[300],
                width: 650,
                height: 250,
                padding: EdgeInsets.all(30),
                child: const Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1582769923195-c6e60dc1d8dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cHVycGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                    radius: 50,
                  ),
                )),
            Center(
              child: Container(
                child: RaisedButton(
                  color: Colors.purple,
                  onPressed: () {
                    setState(() {
                      theme ? theme = false : theme = true;
                    });
                  },
                  child: Text(
                    "Theme",
                    style: TextStyle(
                      color: theme ? col1 : col2,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
