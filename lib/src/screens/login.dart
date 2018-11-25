import 'package:flutter/material.dart';
import 'package:login_bloc/src/blocs/bloc.dart';
import 'package:login_bloc/src/blocs/provider.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(bloc),
            passwordField(bloc),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton()
          ],
        ),
      )
    );
  }

  Widget emailField(Bloc bloc) => StreamBuilder<String>(
    stream: bloc.email,
    builder: (context, snap) {
      return TextField(
        keyboardType: TextInputType.emailAddress,
        onChanged: bloc.changeEmail,
        decoration: InputDecoration(
          labelText: 'Email address',
          hintText: 'you@example.com',
          errorText: snap.error
        ),
      );
    },
  );

  Widget passwordField(Bloc bloc) => StreamBuilder<String>(
    stream: bloc.password,
    builder:(context, snap) {
      return TextField(
        obscureText: true,
        onChanged: bloc.changePassword,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password',
          errorText: snap.error
        ),
      );
    }
  );

  Widget submitButton() => RaisedButton(
    onPressed: () {},
    child: Text('Login', style: TextStyle(color: Colors.white),),
    color: Colors.blue,
  );
}
