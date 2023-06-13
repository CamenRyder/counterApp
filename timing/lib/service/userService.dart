import 'dart:convert';

import 'package:http/http.dart' as http;

class UseService {
  final url = 'http://localhost:8080/user/loginUser';

  Future<void> loginUser(
      {required String username, required String password}) async {
    http.Client httpClient = http.Client();
    final response = await httpClient.post(Uri.parse(url),
        headers: {"Content-type": "application/json"},
        body: jsonEncode({
          'username': 'mhieusz.23.dkc@gmail.com',
          'password': 'minhhieu2003'
        }));
    if (response.statusCode == 200) {
      print('aduu');
      final body = jsonDecode(response.body) as Map;
      print('something is wrong?: ' + body.toString());
    }
    print('hello ');
  }
}
