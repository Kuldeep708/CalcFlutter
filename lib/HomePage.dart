import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();

}

class HomePageState extends State<HomePage> {
 var num1=0,num2=0,op=0;
 final TextEditingController t1 = new TextEditingController(text:"0");
 final TextEditingController t2 = new TextEditingController(text: "0");
 void doAdd()
 {
  setState(() {
    num1 = int.parse(t1.text);
    num2=int.parse(t2.text);
    op=num1+num2;
  });
 }
  void doMul()
 {
  setState(() {
    num1 = int.parse(t1.text);
    num2=int.parse(t2.text);
    op=num1*num2;
  });
 }
  void doDiv()
 {
  setState(() {
    num1 = int.parse(t1.text);
    num2=int.parse(t2.text);
    op=num1~/num2;
  });
 }
  void doSub()
 {
  setState(() {
    num1 = int.parse(t1.text);
    num2=int.parse(t2.text);
    op=num1-num2;
  });
 }
 void doClear()
 {
   setState(() {
     t1.text='0';
     t2.text='0';
     op =0;
   });
 }
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      
      appBar: new AppBar(
        title: new Text('Calculator'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0) ,
               child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Output is :$op",style: new TextStyle(fontSize: 20.0,color: Colors.red ),
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "enter number 1"),
              controller: t1,
              
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "enter number 2"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text('add'),
                  onPressed: (){doAdd();},
                ),
                 new RaisedButton(
                  child: new Text('mul'),
                  onPressed: (){doMul();},
                ),
                 
                
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text('div'),
                  onPressed: (){doDiv();},
                ),
                 new RaisedButton(
                  child: new Text('sub'),
                  onPressed: (){doSub();},
                ),
            
               
                
              ],
            ),
             new Padding(
                  padding: const EdgeInsets.only(top: 20),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text('Clear'),
                      onPressed: doClear,
                      color: Colors.greenAccent,
                    )
                  ],
                ) 
          ],
        ),
      ),
    
    );
  }
}