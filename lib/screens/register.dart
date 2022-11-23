import 'package:flutter/material.dart';
import 'package:lab3/screens/thirdPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final String titleString = 'Register';
  var textEditController = new TextEditingController();
  var textEditController1 = new TextEditingController();
  var textEditController2 = new TextEditingController();
  var textEditController3 = new TextEditingController();


@override
  Widget build(BuildContext context){
    Widget widget = new ListView(
      children: <Widget>[
        ListTile(
          title: TextField(
            decoration: InputDecoration(
              labelText: 'Your First Name : ',
              hintText: 'Enter First Your Name'
            ),
            controller: textEditController,
          ),
        ),
        
        ListTile(
        title: TextFormField(
          decoration: InputDecoration(
              labelText: 'Your Last Name : ',
              hintText: 'Enter Your Last Name'
          ),
          controller: textEditController1,
        ),
      ),

      ListTile(
        title: TextFormField(
          decoration: InputDecoration(
              labelText: 'Your Number : ',
              hintText: 'Enter Your Number'
          ),
          controller: textEditController2,
        ),
      ),

        ListTile(
        title: TextFormField(
          decoration: InputDecoration(
              labelText: 'Your Nickname : ',
              hintText: 'Enter Your Nickname'
          ),
          controller: textEditController3,
        ),
      ),


        ListTile(
          title: ElevatedButton(
            child: Text('Show In ThirdPage'),
            onPressed: () {
              var route = MaterialPageRoute(
                builder: (BuildContext context) => ThirdPage(
                  valueFromSecondPage: textEditController.text,
                  valueFromSecondPage1: textEditController1.text,
                  valueFromSecondPage2: textEditController2.text,
                  valueFromSecondPage3: textEditController3.text,
                ));
                Navigator.of(context).push(route);
            },
            ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: widget,
      
    );
  }
}