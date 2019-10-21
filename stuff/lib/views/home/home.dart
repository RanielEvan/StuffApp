import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {
  
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
          //== APPBAR ===

          SizedBox(height: 10.0), //DISTANCIA

          //== CONTEUDO ===
          Container(

            //Pega o tamanho da tela
            height: MediaQuery.of(context).size.height - 180,
            decoration: BoxDecoration(
              color: Colors.white, //FUNDO
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
            ),

            //Lista de Itens
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(top: 45.0), //Margem de Cima..
              children: <Widget>[ //Listagem
                Padding(
                  padding: EdgeInsets.only(top: 150.0),
                  child:Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child:ListView(
                      children: <Widget>[

                        //ADD FILHOS

                      ],
                    )
                  )
                )
              ],
            ),
          ),

          SizedBox(height: 10.0), //DISTANCIA

          //ACOES DE BAIXO
          Container(
                alignment: Alignment.bottomCenter,
                  width: 120.0,
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


          // Stack(
          //   children: <Widget>[
          //     Align(
          //       alignment: Alignment.bottomLeft,
          //       child: Padding(
          //         padding: EdgeInsets.only(left:24.0),

          //         child: FloatingActionButton.extended(
          //           heroTag: "direction",
          //           backgroundColor: Colors.blue,
          //           onPressed: () => setState(() {
          //              //LOGICA
          //           }),
          //           icon: Icon(
          //             Icons.add,
          //             color: Colors.white,
          //           ),
          //           label: Text("Tarefa"),

          //         )

          //       ),
          //     ),

          //     Align(
          //       alignment: Alignment.bottomCenter,
          //       child: Padding(
          //         padding: EdgeInsets.only(left:0.0),

          //         child: FloatingActionButton.extended(
          //           heroTag: "speed",
          //           backgroundColor: Colors.green,
          //           onPressed: () => setState(() {
          //              //LOGICA
          //           }),
          //           icon: Icon(
          //             Icons.add,
          //             color: Colors.white,
          //           ),
          //           label: Text("Tipo"),

          //         )

          //       ),
          //     ),

          //     Align(
          //       alignment: Alignment.bottomRight,
          //       child: Padding(
          //         padding: EdgeInsets.only(right:24.0),

          //         child: FloatingActionButton.extended(
          //           heroTag: "outro",
          //           backgroundColor: Colors.red,
          //           onPressed: () => setState(() {
          //              //LOGICA
          //           }),
          //           icon: Icon(
          //             Icons.attach_money,
          //             color: Colors.white,
          //           ),
          //           label: Text(""),

          //         )

          //       ),
          //     )

          //   ],
          // )

        ],
        
      )
      
    );
  }
}



