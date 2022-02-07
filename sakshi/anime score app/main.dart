import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

//scaffold helps in structure of our app(it binds our app frame)
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int popularity = 0;
  bool theme = false;
  var col1 = Colors.amber;
  var col2 = Colors.pinkAccent[400];
  //saving colors in  variable to add to evry thing
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme ? col1 : col2,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Anime Score APP",
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
                margin: EdgeInsets.all(4),
                color: Colors.black,
                width: 550,
                height: 150,
                padding: EdgeInsets.all(30),
                child: const Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1578632767115-351597cf2477?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGNhcnRvb24lMjBjaGFyYWN0ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                    radius: 50,
                  ),
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                margin: EdgeInsets.all(4),
                width: 550,
                height: 150,
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name:Neko chan',
                      style: TextStyle(
                        color: theme ? col1 : col2,
                        fontSize: 20,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Popularity:$popularity",
                      style: TextStyle(
                        color: theme ? col1 : col2,
                        letterSpacing: 2,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Phone Number:9172XXXXX03',
                      style: TextStyle(
                        fontSize: 20,
                        color: theme ? col1 : col2,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                )),
            Center(
              child: Container(
                child: RaisedButton(
                  color: Colors.black,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            popularity++;
          });
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: theme ? col1 : col2,
        ),
      ),
    );
  }
}
