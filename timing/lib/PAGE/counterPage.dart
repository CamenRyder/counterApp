import 'dart:ffi';

import 'package:flutter/material.dart';

import '../BackGround/backgroundLogin.dart';

class CounterPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (context) => CounterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 75, 12, 7),
          title: const Text(
            'countdown ?',
            style: TextStyle(
                color: Color.fromARGB(255, 151, 112, 48),
                fontWeight: FontWeight.bold,
                fontSize: 28),
          ),
        ),
        body: Stack(
          children: <Widget>[
            BG_counter(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    '02:00',
                    style: TextStyle(
                        fontSize: 68,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 151, 112, 48)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.play_arrow,
                            size: 44,
                            color: Color.fromARGB(255, 174, 147, 8),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            backgroundColor:
                                const Color.fromARGB(255, 85, 16, 16),
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.play_arrow,
                            size: 44,
                            color: Color.fromARGB(255, 174, 147, 8),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            backgroundColor:
                                const Color.fromARGB(255, 85, 16, 16),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
/**
 *
 */
