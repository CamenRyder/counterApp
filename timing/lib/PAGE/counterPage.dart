import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(
      builder: (context) => CounterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Text('Helllo'),
    )); 
  }
}
