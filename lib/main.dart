import 'package:flutter/material.dart';
import 'Login.dart';
//import 'Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Login(),
  //    home: Routes(),
    );
  }
}
