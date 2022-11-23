
import 'package:flutter/material.dart';
import 'package:lab3/screens/thirdPage.dart';

class SecondPage extends StatefulWidget {
 // final String valueFromHome;
  //SecondPage({Key key.this.valueFromeHome}):super(key:key);
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final String titleString = "_SecondPage";
  var textEditController = new TextEditingController();
  var textEditController1 = new TextEditingController();


  @override
  Widget build(BuildContext context){
    Widget widget = new ListView(
      children: <Widget>[
        ListTile(
          title: TextField(
            decoration: InputDecoration(
              labelText: 'Your Name : ',
              hintText: 'Enter Your Name'
            ),
            controller: textEditController,
          ),
        ),
        
        ListTile(
        title: TextFormField(
          decoration: InputDecoration(
              labelText: 'Last Name : ',
              hintText: 'Enter Last Name'
          ),
          controller: textEditController1,
        ),
      ),

        ListTile(
          title: ElevatedButton(
            child: Text('Next Show in Third Page'),
            onPressed: () {
              var route = MaterialPageRoute(
                builder: (BuildContext context) => ThirdPage(
                  valueFromSecondPage: textEditController.text,
                  valueFromSecondPage1: textEditController1.text,
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
      
      //Text: ("${widget.valueFromHome}");
      // body: Container(
      //   child: Center(
      //     child: Image.asset('images/background.png'),
      //   ),
      // ),
    );
    //Text: ("${widget.valueFromHome}");
  }

}