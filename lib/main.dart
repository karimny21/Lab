
import 'package:flutter/material.dart';
import 'package:lab3/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
     // home: Text('data'),
     home: Home(), 
    );
  }
}