import 'package:flutter/material.dart';
import 'package:lab3/screens/register.dart';
import 'package:lab3/screens/secondPage.dart';
//import 'package:lab3/screens/thirdPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String titleString = "_HomeStage";
  var textEditController = new TextEditingController();

  Widget showName() {
    return Text('ยินดีต้อนรับ',
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontStyle: FontStyle.normal));
  }

  Widget showNumber() {
    return Text('25',
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.brown[300],
            fontStyle: FontStyle.normal));
  }

  Widget showText() {
    return Text(
      'ณรงค์ศักดิ์ หยีมะเหรบ',
      style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlue[300],
          //fontStyle: FontStyle.normal
          fontFamily: 'Mitr'),
    );
  }

  Widget showLogo() {
    return Image.asset(
      'images/logo.png',
      width: 70,
      height: 70,
    );
  }

  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Username : ',
            hintText: 'yourmail@mail.com'),
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              size: 36.0,
              color: Colors.brown[400],
            ),
            labelText: 'Password : ',
            hintText: 'Your Password'),
      ),
    );
  }

  Widget button() {
    return Container(
      width: 250,
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.account_circle,
          color: Colors.green[100],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.green)),
        label: Text(
          'Login',
          style: TextStyle(color: Colors.lightBlue[200]),
        ),
        onPressed: () {
          var route = MaterialPageRoute(
              builder: (BuildContext context) => SecondPage());
          Navigator.of(context).push(route);
        },
      ),
    );
  }

  Widget buttonRegis() {
    return Container(
      width: 250,
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.new_releases,
          color: Colors.blue[100],
        ),
        style:
            ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),

        // color: Colors.blue,
        label: Text('Register'),
        onPressed: () {
          var route = MaterialPageRoute(
              builder: (BuildContext context) => RegisterPage());
          Navigator.of(context).push(route);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green[100] ,
      //  body: Text('This is My Home'),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showLogo(),
                showName(),
                showNumber(),
                showText(),
                emailText(),
                passwordText(),
                button(),
                buttonRegis(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
