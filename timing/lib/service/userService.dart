import 'package:http/http.dart' as http;

class UseService {
  final url = 'http://localhost:8080/user/loginUser';

  Future<void> loginUser(
      {required String username, required String password}) async {
    http.Client httpClient = http.Client();
    var response = await httpClient.post(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
    }, body: {
      'username': username,
      'password': password
    });

    print('hello ');
  }
}
