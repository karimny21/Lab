import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String valueFromSecondPage,valueFromSecondPage1,valueFromSecondPage2,valueFromSecondPage3;
  ThirdPage({Key key,
  this.valueFromSecondPage,
  this.valueFromSecondPage1,
  this.valueFromSecondPage2,
  this.valueFromSecondPage3
  }):super(key:key);
  
  @override
  _ThirdPageState createState() => _ThirdPageState();
  }

  class _ThirdPageState extends State<ThirdPage>{
    final String titleString = "ThirdPage";
    @override
    Widget build(BuildContext context){
      return Scaffold(appBar: AppBar(
        title: Text(titleString),
      ),
      body: Text("${widget.valueFromSecondPage}\n${widget.valueFromSecondPage1}\n${widget.valueFromSecondPage2}\n${widget.valueFromSecondPage3}"),
    );}

  }