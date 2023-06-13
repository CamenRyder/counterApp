import 'package:flutter/material.dart';

import '../BackGround/backgroundLogin.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _LoginPage() ;  
  }

}

class _LoginPage extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
          appBar: AppBar(
            title: const Text(
              'login',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: Stack(
            children: [
              const BG_login(),
              SafeArea(
                  minimum: const EdgeInsets.all(10),
                  child: Center(
                      child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 200),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9),
                                    gapPadding: 5.0),
                                labelText: 'username',
                                labelStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9),
                                    gapPadding: 5.0),
                                labelText: 'password',
                                labelStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: SizedBox(
                            width: 120,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'login',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ],
                    ),
                  )))
            ],
          ));
  }

}