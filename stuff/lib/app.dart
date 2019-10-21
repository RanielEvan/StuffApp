import 'package:flutter/material.dart';
import 'package:stuff/views/home/home.dart';

class AppTree extends StatefulWidget {

  @override
  _AppTreeState createState() => _AppTreeState();
}

class _AppTreeState extends State<AppTree> {

  /* 
    STUFF
    Aqui onde as logicas se juntam (tree)
  */

  static final GlobalKey<ScaffoldState> _scafKey = GlobalKey<ScaffoldState>();

  final _pgTitle = "Pagina de Raniel"; 

  final controller = PageController(
    initialPage: 0,
  );

  static final bgBright = Brightness.dark;

  //Icone do botao de acao (AppBar)
  var actionIcon = Icons.swap_vert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafKey,     

      //APP BAR
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _pgTitle,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          )
        ),

        //BOTOES DE ACAO
        actions: <Widget>[
          IconButton( 
            icon: Icon(actionIcon),
            onPressed: (){

              setState(() {
                // brightness: Brightness.dark,
              });
              
            },
            
          )
        ],
      ),

      body: PageView( //PAGINAS DA VIEW
        controller: controller,
        pageSnapping: true,
        children: [
          Home(), //Home View
          Pagina2(),
          Pagina3(),
        ],
      ),

      


    );
  }
}



class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
        color: Colors.lightBlue,
        elevation: 4,
        margin: EdgeInsets.all(24),
        child: Center(
          child: Text(
            "Pagina 2!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24
            ),
          ),
        )
      )
    );
  }
}

class Pagina3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
        color: Colors.lightBlue,
        elevation: 4,
        margin: EdgeInsets.all(24),
        child: Center(
          child: Text(
            "Pagina 3 Porra!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24
            ),
          ),
        )
      )
    );
  }
}
  