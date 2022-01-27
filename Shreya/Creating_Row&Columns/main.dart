import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
            "My Contact"
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Column (
          crossAxisAlignment:
          CrossAxisAlignment.start,


          children: [
            const Center(
              child:
              CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
              radius: 60.0,
              ),

          ),
              Divider(
                  height: 90.0,
                  color: Colors.yellow,
    ),
              Text(
              "Contact Name: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              color: Colors.amber,
              letterSpacing: 2.0,
    ),

    ),
              const SizedBox(height: 10.0,),
              Text(
              "Minion",
              style: TextStyle(
                fontSize: 20,
                color: Colors.amberAccent,
                          ),

    ),
    Text(
    "Phone Number: ",
    style: TextStyle(
    color: Colors.amber,
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
      color: Colors.amberAccent,

    ),

    ),

    Text(
    "EmailId: ",
    style: TextStyle(
    color: Colors.amber,
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
      color: Colors.amberAccent,

    ),

    ),

    Text(
    "Date of Birth: ",
    style: TextStyle(
    color: Colors.amber,
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
      color: Colors.amberAccent,

    ),

    ),








    ],
        ),
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

