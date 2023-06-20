import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 75, 12, 7),
      child: Center(
        child: CircularProgressIndicator(
            strokeWidth: 4, color: Color.fromARGB(255, 151, 112, 48)),
      ),
    ));
  }
}
