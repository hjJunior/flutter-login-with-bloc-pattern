import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton()
          ],
        ),
      )
    );
  }

  Widget emailField() => TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'Email address',
      hintText: 'you@example.com',
    ),
  );

  Widget passwordField() => TextField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Password',
      hintText: 'Password',
    ),
  );

  Widget submitButton() => RaisedButton(
    onPressed: () {},
    child: Text('Login', style: TextStyle(color: Colors.white),),
    color: Colors.blue,
  );
}
