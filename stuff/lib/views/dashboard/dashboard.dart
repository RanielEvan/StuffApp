import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
    @override
    _DashboardState createState() => _DashboardState();
}



class _DashboardState extends State<Dashboard> {
  
  //Variaveis
  final controller = PageController(
    initialPage: 0,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF21BF8D),
      body: ListView(
        
        children: <Widget>[

          //== APPBAR ===
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){
                    //COMANDOS
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left:10),
                  child: Row(
                    children: <Widget>[
                      Text('Stuff',
                        style: TextStyle(
                          fontFamily: 'MoonGet',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        )),
                    ],
                    ),
                ),
                Container(
                  width: 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: (){
                          //COMMANDOS
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: (){
                          //COMMANDOS
                        },
                      ),
                    ],
                  )
                ),

              ],
            ),
          ),


          SizedBox(height: 10.0), //DISTANCIA

          //== CONTEUDO ===
          Container(

            //Pega o tamanho da tela
            height: MediaQuery.of(context).size.height - 180,
            decoration: BoxDecoration(
              color: Colors.white, //FUNDO
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            ),

            //Lista de Itens
            child:
            // ListView(
            //   primary: false,
            //   padding: EdgeInsets.only(top: 45.0), //Margem de Cima..
            //   children: <Widget>[ //Listagem
            //     Padding(
            //       padding: EdgeInsets.only(top: 150.0),
            //       child:Container(
            //         height: MediaQuery.of(context).size.height - 300.0,
            //         child:ListView(
            //           children: <Widget>[

            //             //ADD FILHOS

            //           ],
            //         )
            //       )
            //     )
            //   ],
            // ),
            PageView( //PAGINAS DA VIEW
              controller: controller,
              pageSnapping: true,
              children: [
                Pagina1(), //Home View
                Pagina2(),
                Pagina3(),
              ],
            ),


          ),

          SizedBox(height: 10.0), //DISTANCIA

          //ACOES DE BAIXO
          Container(
                alignment: Alignment.bottomCenter,
                  //width: 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      
                      FloatingActionButton.extended(
                        heroTag: "tarefa",
                        backgroundColor: Colors.blue,
                        onPressed: () => setState(() {
                          //LOGICA
                        }),
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        label: Text("Tarefa"),

                      ),
                      
                      FloatingActionButton.extended(
                        heroTag: "tipo",
                        backgroundColor: Colors.purple,
                        onPressed: () => setState(() {
                          //LOGICA
                        }),
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        ),
                        label: Text("Tipo"),

                      ),
                      
                      FloatingActionButton.extended(
                        heroTag: "monety",
                        backgroundColor: Colors.green,
                        onPressed: () => setState(() {
                          //LOGICA
                        }),
                        icon: Icon(
                          Icons.attach_money,
                          color: Colors.white,
                        ),

                        label: Text("Valores" 
                          // style:
                          // TextStyle(
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16.0
                          // )
                        ),

                      ),

                    ],
                  )
                ),


        ],
        
      )
      
    );
  }
}



class Pagina1 extends StatelessWidget {
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
            "Pagina 1!",
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
