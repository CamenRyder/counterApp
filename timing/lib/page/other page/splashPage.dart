import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromARGB(255, 75, 12, 7),
      child: const Center(
        child: CircularProgressIndicator(
            strokeWidth: 4, color: Color.fromARGB(255, 151, 112, 48)),
      ),
    ));
  }
}

class SplashPageCicular02 extends StatelessWidget {
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => SplashPageCicular02());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromARGB(255, 75, 12, 7),
      child: const Center(
        child: CircularProgressIndicator(
            strokeWidth: 4, color: Color.fromARGB(255, 151, 112, 48)),
      ),
    ));
  }
}
