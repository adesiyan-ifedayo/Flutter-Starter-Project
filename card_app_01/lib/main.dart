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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    letterSpacing: 4,
                ),
              ),
              SizedBox( height: 20.0, width: 150.0,
              child: Divider(
                color: Colors.black,
              ),),
              Card(
                color: Colors.black45,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black
                    ),
                    title: Text('+2348012345678',
                      style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 18.0
                      ),
                    )
                  ),
                )
              ),
              Card(
                color: Colors.black45,

                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                      leading: Icon(
                          Icons.email,
                          color: Colors.black
                      ),
                      title: Text('adesiyanifedayo@gmail.com',
                        style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 18.0
                        ),
                      )
                  ),
                ),
              ),
              Card(
                color: Colors.black45,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.house,
                      color: Colors.black,
                    ),
                    title: Text('O2 ARENA',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 18.0
                    ))
                  )
                )
              ),
            ]
          ),
        ),
      ),
    );
  }
}


