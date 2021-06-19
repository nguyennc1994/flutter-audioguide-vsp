import 'package:flutter/material.dart';
import 'package:audioguide/pre-login/chooselanguage.dart';

class FirstScreen extends StatelessWidget {
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
              Image.asset('assets/icons/fs-img.png'),
              SizedBox(height: 28),
              Text("Hello"),
              SizedBox(height: 13),
              Text("Vietnam Audioguide. Welcome you!"),
              SizedBox(height: 70),
              Container(
                height: 40,
                width: 220,
                child: TextButton(
                  child: Text("Chọn ngôn ngữ"),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color(0xFFCF0000),
                      onSurface: Colors.grey,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChooseLanguage()),
                    );
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
