import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: animeList()
  ));
}

class animeList extends StatefulWidget {
  const animeList({Key? key}) : super(key: key);

  @override
  _animeListState createState() => _animeListState();
}

class _animeListState extends State<animeList> {
  List<String> items= [
    "Naruto",
    "Baki",
    "Jujutsu Kaisen",
    "Tokyo Ghoul",
    "Attack on Titan",
    "DeathNote"
  ];

  Widget Wrap(item){
    return Container(
      color: Colors.greenAccent,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      padding: EdgeInsets.all(10),
      child: Text(item,
      textAlign: TextAlign.center,)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Anime List')
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: items.map((item)=>Wrap(item)).toList()
      )
    );
  }
}