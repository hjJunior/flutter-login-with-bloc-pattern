import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login.dart';
import 'package:login_bloc/src/blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Provider(
    child: MaterialApp(
      title: 'Login Bloc',
      color: Colors.blue,
      home: Login(),
    )
  );
}
