import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Vladim Blyat',
          style: TextStyle(
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            //letterSpacing: 20,
            fontSize: 10,
            wordSpacing: 10
          ),
        ),
      ),
      body: Center(
        child: Image(
            image: NetworkImage("https://images.unsplash.com/photo-1642708963755-fc1b53eb3313?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.ac_unit_outlined,
          color: Colors.black
        ),
      ),
    )
  ));
}