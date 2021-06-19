import 'package:flutter/material.dart';
import 'package:audioguide/pre-login/firstscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}
