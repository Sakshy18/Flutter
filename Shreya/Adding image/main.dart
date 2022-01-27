import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true ,
        title: Text('High on caffine',
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
        child: Image(
          image: NetworkImage("https://images.unsplash.com/photo-1511920170033-f8396924c348?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
        )
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.brown,
      onPressed: (){},
      child: Icon(
        Icons.emoji_emotions,
        color: Colors.brown[200],
      ),
    ),
    )
  ));
}


