import 'package:flutter/material.dart';

import 'package:stuff/components/dividasDash.dart'; //DividasDASH
import 'package:stuff/components/eventosDash.dart'; //TarefasDASH


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // backgroundColor: Color(0xFF2A0845),
      backgroundColor: Color(0xFF1A2980),
      
      body: CustomScrollView(
        
        slivers: <Widget>[

          //APP BAR
          SliverAppBar(
            backgroundColor: Color(0xFF1A2980),
            floating: false,
            pinned: true,
            expandedHeight: 150.0,

            flexibleSpace: FlexibleSpaceBar(

              centerTitle: true,              
              title: Text("StuffApp",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: "MoonGet"),
                ),
               
                background: Container(

                  decoration: BoxDecoration(

                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF26D0CE), Color(0xFF1A2980)]
                    ),


                    border: Border(
                      top: BorderSide(
                        // color: Colors.black26,
                        width: 1.0,
                      )
                    )
                  ),
                ),
            ),
            
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.equalizer),
                onPressed: () {},
                // => Navigator.push(context, MaterialPageRoute()
              )
            ],
          ),

          
          SliverList(
              delegate: SliverChildListDelegate(
              [
                prePadding(),
                displayDividas(),

                prePadding(),
                displayEventos(context),
                // listItem("Item56"),
                // listItem("Item126"),
              ]
            ),

          ),

        ],
      ),

    );
  }

}


Widget prePadding() => Padding(
  padding: EdgeInsets.only(top: 20),
);

// Widget listItem(String title) => Container(
//   height: 200.0,
//   color: Colors.white,

//   child: Center(
//     child: Text("title",
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         color: Colors.black45,
//         fontSize: 18.0,
//         fontWeight: FontWeight.bold
//       ),

//     )
//   )
// );



// Widget tarefasItem(String title) => Container(
//   height: 50.0,
//   color: Colors.white,

//   child: Center(
//     child: Text("title",
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         color: Colors.black45,
//         fontSize: 15.0,
//         fontWeight: FontWeight.bold
//       ),

//     )
//   )
// );
