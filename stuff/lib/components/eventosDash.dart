import 'package:flutter/material.dart';


Widget displayEventos(BuildContext context) => Container(
  
  height: 300,
  // height: MediaQuery.of(context).size.height/1.5,

  // color: Color(0xFFF49830),

  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0xFFF49830), Colors.red]
      ),
  ),

  child: Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
            children: <Widget>[
              
              Text("Proximos eventos:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 15.0),
              ),

              Container(
                child: Column(
                  children: <Widget>[
                    eventoItem(context),
                    eventoItem(context),
                    eventoItem(context),
                    eventoItem(context),
                  ],

                ),

              ),
      
            ],
          ),

      ),
    ]
  )
);


Widget eventoItem(BuildContext ctx) => Padding(
  padding: EdgeInsets.only(bottom: 5),
  
  child: Container(
    height: 50,
    width: MediaQuery.of(ctx).size.width - 30,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),  
    ),
    alignment: Alignment.center,
    padding: EdgeInsets.only(left: 30, right: 30),

    child: Text("Fazer o app Stuff, e todas as suas funcionalidades básicas e avancadas!",
      style: TextStyle(
        backgroundColor: Colors.white,
        color: Colors.black87,
      ),
      textAlign: TextAlign.center,

    ),
  ),
);