import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showName() {
    return Text('ยินดีต้อนรับ',
    style: TextStyle(
      fontSize: 30.0 , 
      fontWeight: FontWeight.bold , 
      color: Colors.black , 
      fontStyle: FontStyle.normal ));
  }

  Widget showNumber() {
    return Text('25',style: TextStyle(
      fontSize: 30.0 , 
      fontWeight: FontWeight.bold , 
      color: Colors.brown[300] , 
      fontStyle: FontStyle.normal ));
  }

   Widget showText() {
    return Text('ณรงค์ศักดิ์ หยีมะเหรบ',
    style: TextStyle(
      fontSize: 30.0 , 
      fontWeight: FontWeight.bold , 
      color: Colors.purple[300] , 
      //fontStyle: FontStyle.normal
      fontFamily: 'Mitr'
       ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200] ,
      //  body: Text('This is My Home'),
      body: SafeArea(
        child:Center(
          child: Column(mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showName(),
              showNumber(),
              showText(),
            ],
          ),
        ),
        
      ),
    );
  }
}
