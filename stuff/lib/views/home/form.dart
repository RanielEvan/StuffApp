import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String get nomeQqr => null;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  final _formKey = GlobalKey<FormState>();
  
  static String nomeQqr = "";

  //Prelogica
  final menu = 0;

  
  @override
  Widget build(BuildContext context) {
    return Form(

      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, //PIVOT

        children: <Widget>[

          Padding(
            
            padding: EdgeInsets.all(18),

            child: Column(

              children: <Widget>[

                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Informação',
                    hintText: 'Digite algo...',
                  ),
                  maxLength: 50,
                  validator: (value){  //Validacao
                    if(value.isEmpty){
                      return 'Digite algo pfv...';
                    }
                    return null;
                  },

                  onChanged: (text) { //Evento ONCHANGED(), sempre que digita algo.
                    setState(() {
                      nomeQqr = text;
                    });
                  },
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  child: 
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                      
                        RaisedButton(
                          onPressed: (){
                            if(_formKey.currentState.validate()){
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("PROCESSSANDO!"),
                                )
                              );
                            }
                          },
                          child: Text('Enviar'),
                        ), 
                        
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        ),

                      
                        RaisedButton(
                          onPressed: (){
                            return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text("Você digitou "+ nomeQqr),
                                );
                              },
                            );
                          },
                          child: Text('Pop up!'),
                        )
                    ],
                  )

                ),

                Center(
                  child: Text(
                    nomeQqr,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),)
                ),
                
              ],
            ),
          )
          


        ],
      ),



      
    );
  }
}

