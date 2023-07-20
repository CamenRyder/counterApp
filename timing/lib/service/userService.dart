import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user.dart';

class UseService {
  User? _user;
  final url = 'http://localhost:8080/user/loginUser';

  Future<int> loginUser(
      {required String username, required String password}) async {
    http.Client httpClient = http.Client();
    final response = await httpClient.post(Uri.parse(url),
        headers: {"Content-type": "application/json"},
        body: jsonEncode({'username': username, 'password': password}));

    var daataa = jsonDecode(response.body) as Map;
    var dataBOO = daataa['data']; 
    User userData = dataBOO 
    return response.statusCode;
  } 

  Future<User?> getDataUser(
      // su dung de lay data tu BE
      {required String username,
      required String password}) async {
    return Future.delayed(Duration(microseconds: 300), () {
      var data = loginUser(username: username, password: password);
    });
  }
}
