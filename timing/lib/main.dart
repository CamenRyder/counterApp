import 'package:flutter/material.dart';
import 'package:timeing/PAGE/loginPage.dart';

import 'BackGround/backgroundLogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: LoginPage()
    );
  }
}
