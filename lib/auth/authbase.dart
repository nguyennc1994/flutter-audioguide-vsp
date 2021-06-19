import 'package:flutter/material.dart';

class AuthBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Column(children: [
              SizedBox(height: 100),
              Image.asset('assets/icons/vietnam.png'),
              SizedBox(height: 12),
              Image.asset('assets/icons/logo.png'),
              SizedBox(height: 40),

            ]),
          ),
        ),
      ),
    );
  }
}
