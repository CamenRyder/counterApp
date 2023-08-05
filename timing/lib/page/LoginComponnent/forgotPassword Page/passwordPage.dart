import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeing/BackGround/backgroundLogin.dart';

import 'componnentForgotPassword.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => ForgotPasswordPage(),
    );
  }



  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ForgotPassword();
  }
}

class _ForgotPassword extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 75, 12, 7),
          title: const Text(
            'Login Counter App',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 151, 112, 48)),
          ),
        ),
        body: Stack(
          children: [
            const BG_login(),
            InforForgotPassword(),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputAccountToResetPassword(),
                  Container(
                    height: 15,
                  ),
                  InputNumberToResetPassword(),
                  OutputCheckToResetPassword(),
                ],
              ),
            )
          ],
        ));
  }
}
