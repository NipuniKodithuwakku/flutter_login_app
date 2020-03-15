import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  createState(){
    return LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen>{
  Widget build (context){
    return Container(
      child: Form(
        child: Column(
          children: <Widget>[
            TextFormField(),
            TextFormField(),
            RaisedButton(onPressed: null)
          ],
          )),
    );
  }
}
