import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              passwordField(),
              //better way of adding space between widgets
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              submitButton(),
            ],
          )),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
    );
  }

  Widget passwordField() {
    return Container(
        margin: EdgeInsets.only(bottom: 25.0),
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'password',
          ),
        ));
    // return TextFormField(
    //   obscureText: true,
    //   decoration: InputDecoration(
    //     labelText: 'Password',
    //     hintText: 'password',
    //   ),
    // );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      onPressed: () {},
      child: Text('Submit'),
    );
  }
}
