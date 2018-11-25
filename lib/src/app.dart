import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Login Bloc',
    color: Colors.blue,
    home: Login(),
  );
}
