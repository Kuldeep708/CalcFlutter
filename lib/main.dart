

import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(
    home: 
      new Scaffold(
         body: DecoratedBox(
           position: DecorationPosition.background,
           decoration: BoxDecoration(
             color: Colors.red,
             image: DecorationImage(
               image: AssetImage("assets/images/kd.jpg"),
               fit: BoxFit.cover
             ),
           ),
           child: new  HomePage(),
         ),
      )
    
    );
   
  }
}