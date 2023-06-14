import 'package:flutter/material.dart';
import 'package:timeing/page/loginPage.dart';
import 'package:timeing/service/userService.dart';


void main() {
  // callApiTest();   
  runApp(const MyApp());
}

// Future<void> callApiTest() async {
//   UseService user = UseService();  
//    user.loginUser(username: 'mhieusz.23.dkc@gmai.com',  password: 'minhhieu2003');
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(home: LoginPage());
  }
}
