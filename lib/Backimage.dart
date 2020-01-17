import 'package:flutter/material.dart';

class BackImage extends class  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home :new Scaffold(
         body: DecoratedBox(
           position: DecorationPosition.background,
           decoration: BoxDecoration(
             color: Colors.red,
             image: DecorationImage(
               image: AssetImage("images/kd.jpg"),
               fit: BoxFit.cover
             ),
           ),
         ),
      )
      
    );
  }
}