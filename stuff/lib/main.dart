import 'package:flutter/material.dart';
import 'package:stuff/views/dashboard/stuff_dash.dart';

void main() => runApp(StuffApp());

class StuffApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Stuff',

      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark, //DARKTHEME
      ),
      
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      
      // home: AppTree(),
      home: Dashboard(),
    );
  }
}