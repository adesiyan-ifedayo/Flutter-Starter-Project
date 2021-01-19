import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/ifedayo.jpg'),
              ),
              Text('Ifedayo Adesiyan',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 40.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text('BACKEND DEVELOPER.',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[Icon(Icons.email)],
                )
              )

            ]
          ),
        ),
      ),
    );
  }
}
