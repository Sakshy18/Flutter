import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: const Itadori(),
  ));
}

class Itadori extends StatefulWidget {
  const Itadori({Key? key}) : super(key: key);

  @override
  _ItadoriState createState() => _ItadoriState();
}

class _ItadoriState extends State<Itadori> {
  int lvl=0;
  var colT = Colors.red;
  var colF = Colors.pinkAccent;
  var colBl = Colors.black;
  var colWh = Colors.white;
  bool theme=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme?Colors.black:Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: theme?colT:colF,
        centerTitle: true,
        title: Text('Itadori',
          style: TextStyle(
            color: theme?Colors.black:Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://media.istockphoto.com/photos/young-adult-portrait-picture-id172442090?s=612x612"),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: theme?colT:colF,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 40.0),
              child: Center(
                child: Text('Hero Level: $lvl',
                  style: TextStyle(
                    fontSize: 20,
                    color: theme?Colors.white:Colors.pinkAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 40.0),
              child: Center(
                child: Container(
                    child: RaisedButton(
                      elevation: 10,
                      hoverElevation: 20,
                      highlightColor: theme?colT:colF,
                      child: Text('Reset'),
                      onPressed: (){
                        setState(() {
                          lvl=0;
                        });
                      },
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                child: RaisedButton(
                  elevation: 10,
                  highlightColor: theme?colT:colF,
                  child: Text('Theme'),
                  onPressed: (){
                    setState(() {
                      theme?theme=false:theme=true;
                    });
                  },
                )
              ),
            )

          ],
        ),
      ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: theme?colT:colF,
      child: Icon(
        Icons.add,
        color: theme?colBl:colWh,
      ),
      onPressed: (){
        setState(() {
          lvl++;
        });
      },

    ),
    );
  }
}