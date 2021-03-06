import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  //create reference to the widget
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

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
      validator: (String value) {
        if (!value.contains('@')) {
          return 'Please enter a valid email';
        }
        return null;
      },
      onSaved: (String value) {
        email = value;
      },
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
          validator: (String value) {
            if (value.length < 4) {
              return 'Password must be at least 4 characters';
            }
            return null;
          },
          onSaved: (String value) {
            password = value;
          },
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
      child: Text('Submit'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();

          //take both email and password
          //and post them into some API
          print('Time to post $email and $password to my API');
        }
      },
    );
  }
}
