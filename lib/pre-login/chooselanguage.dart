import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:audioguide/auth/login.dart';

class ChooseLanguage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          leading: IconButton(
            icon: Icon(Icons.navigate_before, color: Color(0xFF2C2C2E)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title:
              Text('Chọn ngôn ngữ', style: TextStyle(color: Color(0xFF2C2C2E))),
        ),
        body: Container(
            child: ListView(padding: EdgeInsets.only(top: 10), children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: new Container(
              padding: EdgeInsets.only(
                left: 10,
              ),
              height: 64,
              color: Colors.white,
              child: Row(children: [
                Flag(
                  'VN',
                  height: 30,
                  width: 40,
                ),
                Text('Tiếng Việt', style: TextStyle())
              ]),
            ),
          )
        ]
                //         Container(
                //           padding: EdgeInsets.only(left: 10,),
                //           height: 64,
                //           color: Colors.white,
                //           child: Row(children: [
                //             Flag(
                //               'GB',
                //               height: 30,
                //               width: 40,
                //             ),
                //             Text('Tiếng Việt', style: TextStyle())]),
                //         ),

                )));
  }
}
