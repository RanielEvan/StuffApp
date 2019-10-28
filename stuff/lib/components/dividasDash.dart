import 'package:flutter/material.dart';

Widget displayDividas() => Container(
  
  height: 120.0,

  decoration: BoxDecoration(
    // color: Colors.white10,
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Color(0xFF52C234), Color(0xFF061700)]
    ),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),

  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      
      Padding(
        padding: EdgeInsets.only(left:5.0)
      ),

      Row(
        children: <Widget>[

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Text("Você está devendo",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text("R\$300.00",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen,
                ),
              ),

            ],
          ),
        ],
      ),
 
      FloatingActionButton.extended(

        heroTag: "detalhesDividas",
        backgroundColor: Colors.lightGreen,
        onPressed: ()  { /*LOGICA*/ },
        label: Text("Ir para dívidas",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0, 
          ),
        ),
        icon: Icon(
          Icons.monetization_on,
          color: Colors.white,
        ),
      ),


      Padding(
        padding: EdgeInsets.only(right:5.0)
      ),

    ],
  )  ,


);
