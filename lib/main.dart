import 'package:login/screens/homeScreen.dart';
import 'package:login/screens/usersScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
     theme: ThemeData(primarySwatch: Colors.cyan),
      home: UsersScreen(),
    );
  }
}