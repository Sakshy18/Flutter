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
  int herolevel = 0;
  bool theme = false;
  //var col1=Colors.purple;
  //var col2=Colors.red; saving colors in  variable to add to evry thing
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme ? Colors.green[900] : Colors.purple[900],
      appBar: AppBar(
          //Appbar designing
          backgroundColor: theme ? Colors.green[900] : Colors.purple[900],
          centerTitle: true,
          title: Text(
            "Now playing",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          )),
      body: Column(children: //we rae saying htere are widgets inside this row
          <Widget>[
        new Container(
            margin: EdgeInsets.all(20),
            width: 300.0,
            height: 300.0,
            decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        "https://images.unsplash.com/photo-1562767372-9927992b5f11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHR3aWxpZ2h0JTIwc2t5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")))),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 63, vertical: 0),
            margin: EdgeInsets.all(30),
            /*width: 550,
            height: 100,*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Let Me Down Slowly',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Alec Benjamin",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                  color: Colors.blueGrey[200],
                ),
                /*child:floatingActionButton:*/
                Center(
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.pause,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )),
        Container(
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: FlatButton.icon(
            onPressed: () {
              setState(() {
                theme ? theme = false : theme = true;
              });
            },
            icon: Icon(
              Icons.headphones,
              color: Colors.black,
            ),
            label: Text("Audio quality:Normal"),
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
