import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  State<Home>createState() => _HomeState();
}

class _HomeState extends State<Home> {




  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700
    ),
    title: const Text(
    "My Cart"),

    ),
      body: Center(
        child: Column(children:<Widget>[
          new Container(
            margin: EdgeInsets.all(25),
            width: 120 ,
            height: 120,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://media.istockphoto.com/vectors/shopping-cart-icon-isolated-on-white-background-vector-id1206806317?k=20&m=1206806317&s=612x612&w=0&h=waK8qOHV2Fgz2ntEWHWBQtXpNDAQ_wdhd4tkTUz6tfE=")
              )
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "List of the Items",
                      style:TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 25
                      )
                ),
                SizedBox(
                    height: 4,
                ),



                Container(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Iphone11                                      78,560/-",
                          style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 15
                          )

                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Divider(height: 2,
                      color: Colors.grey,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        margin: EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "OnePlus Smartwatch                 15,000/-",
                                style:TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15
                                )
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Divider(height: 2,
                              color: Colors.grey,),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 0),
                              margin: EdgeInsets.all(0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Women's Jeans (S)                     499/-",
                                      style:TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15
                                      )
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Divider(height: 2,
                                    color: Colors.grey,),

                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 0),
                                    margin: EdgeInsets.all(0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nike Air Max                                8,195/-",
                                            style:TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 15
                                            )
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Divider(height: 2,
                                          color: Colors.grey,),

                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 60),
                                          margin: EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "Subtotal =",
                                                  style:TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 25
                                                  )
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),

                                              Container(
                                                child: Center(
                                                  child:RaisedButton.icon(
                                                  elevation: 80,
                                                  onPressed: (){},
                                                  icon: Icon(Icons.shopping_bag_outlined),
                                                    padding: EdgeInsets.symmetric(horizontal: 150, vertical:10),
                                                    color: Colors.amber,
                                                  label: Text("Proceed to buy",
                                                    style: TextStyle(fontWeight: FontWeight.w400) ,
                                                ),
                                                    hoverColor: Colors.red[300],
                                              ),


                                              ) ,
                                        ),


          ],


)
                                        )
                                    ],

    ),
      ),
    ]
    ),
    ),
      ]
    ),
    )
        ]
    )
    ),
      ]
    )
      ),
      ]
    ),
    ),
    );
  }
