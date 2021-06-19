import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool isCheck = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 100),
            Image.asset('assets/icons/vietnam.png'),
            SizedBox(height: 12),
            Image.asset('assets/icons/logo.png'),
            SizedBox(height: 40),
            Container(
              child: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(
                      child: Text(
                    'Đăng nhập',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    'Đăng ký',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: TextField(
                        style: TextStyle(
                          height: 0.8,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.perm_identity_outlined),
                          border: OutlineInputBorder(),
                          hintText: 'Email/Số điện thoại',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: TextField(
                        style: TextStyle(
                          height: 0.8,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.perm_identity_outlined),
                          border: OutlineInputBorder(),
                          hintText: 'Email/Số điện thoại',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: TextField(
                        style: TextStyle(
                          height: 0.8,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.perm_identity_outlined),
                          border: OutlineInputBorder(),
                          hintText: 'Email/Số điện thoại',
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerLeft,
                      child: Checkbox(

                        activeColor: Color(0xFFCF0000),
                        checkColor: Colors.white,
                        value: isCheck,
                        onChanged: (bool value) {
                          setState(() {
                            isCheck = value;
                          });
                          print(isCheck);
                        },
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 220,
                      child: TextButton(
                        child: Text("Đăng nhập"),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xFFCF0000),
                            onSurface: Colors.grey,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                        onPressed: () {},
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: TextField(
                        style: TextStyle(
                          height: 0.8,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.perm_identity_outlined),
                          border: OutlineInputBorder(),
                          hintText: 'Email/Số điện thoại',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: TextField(
                        style: TextStyle(
                          height: 0.8,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.perm_identity_outlined),
                          border: OutlineInputBorder(),
                          hintText: 'Email/Số điện thoại',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: TextField(
                        style: TextStyle(
                          height: 0.8,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.perm_identity_outlined),
                          border: OutlineInputBorder(),
                          hintText: 'Email/Số điện thoại',
                        ),
                      ),
                    ),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
