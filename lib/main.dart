import 'package:flutter/material.dart';

//Entry point of our flutter app
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  onButtonClickEvent(){
    print('Function on Click Event Called.');
  }

 build(context){
   return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
            'AppBar Title'),
      ),
      body: Column(children: <Widget>[
        Card(
          child: Column(children: <Widget>[
            Image.asset('assets/flutter.png'),
            Text('"Flutter Development"')
          ],),
        ),
        FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.blueAccent,
          onPressed: () {
            this.onButtonClickEvent();
          },
          child: Text(
            "Flat Button",
            style: TextStyle(fontSize: 20.0),
          ),
        )
      ],)
    ),
   );
 }

}