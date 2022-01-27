import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    home: MyContact(),
  ));
}

class MyContact extends StatefulWidget {
  const MyContact({Key? key}) : super(key: key);

  @override
  State<MyContact>createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {
  int total = 0;
  bool theme = true;
  var col1= Colors.black87;
  var col2= Colors.white70;
  var colappbar= Colors.grey;
  var colappbar2= Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme? col1:col2,


      appBar: AppBar(
        backgroundColor: theme? colappbar2:colappbar,
        centerTitle: true,
        title: Text(
            "My Contact"
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(30),
             color:theme? colappbar2:colappbar,

            height: 150,
            width: 550,
            child:
            Center(
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
                radius:60,
              ),

            ),

          ),
          Divider(
            height: 50.0,
            color: theme? colappbar2:col1,
          ),
          Text(
            "Contact Name: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color:theme? colappbar2:col1,
              letterSpacing: 2.0,
            ),

          ),
          const SizedBox(height: 10.0,),
          Text(
            "Minion",
            style: TextStyle(
              fontSize: 20,
              color: theme? colappbar2:col1,

            ),

          ),
          Text(
            "Phone Number: ",
            style: TextStyle(
              color: theme? colappbar2:col1,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),

          ),
          const SizedBox(height: 10.0,),
          Text(
            "1001010101",
            style: TextStyle(
              fontSize: 20,
              color: theme? colappbar2:col1,

            ),

          ),

          Text(
            "EmailId: ",
            style: TextStyle(
              color: theme? colappbar2:col1,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),

          ),
          const SizedBox(height: 10.0,),
          Text(
            "bananana@minion.com",
            style: TextStyle(
              fontSize: 20,
              color: theme? colappbar2:col1,

            ),

          ),

          Text(
            "Date of Birth: ",
            style: TextStyle(
              color: theme? colappbar2:col1,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),

          ),
          const SizedBox(height: 10.0,),
          Text(
            "31/02/2002",
            style: TextStyle(
              fontSize: 20,
              color: theme? colappbar2:col1,

            ),

          ),

        ],

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:theme?colappbar2:col1,
        onPressed: () {
          setState(() {
            (theme)?theme=false:theme=true;
          });
        },
        child: Icon(
          Icons.lightbulb_outline_rounded,
          color: Colors.white,
        ),



      ),


    );
  }
}

