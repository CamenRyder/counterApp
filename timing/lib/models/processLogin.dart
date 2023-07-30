import 'dart:async';
import 'dart:math';

import 'package:http/http.dart';
import 'package:timeing/service/userService.dart';

enum ProcessLoginStatus { login, forgot, registering }

class ProcessLogin {
  final _controller = StreamController<ProcessLoginStatus>();
  late UseService useService;

  Stream<ProcessLoginStatus> get status async* {
    await Future.delayed(const Duration(milliseconds: 750));
    yield ProcessLoginStatus.login;
    yield* _controller.stream;
  }

  Future<String> signUpAccount({
    required String username,
    required String password,
    required String number,
    required String dateSignUp,
    required String name,
  }) async {
    useService = UseService();
    Response data = await useService.signUpAccount(
        username: username,
        password: password,
        number: number,
        dateSignUp: dateSignUp,
        name: name);
    await Future<void>.delayed(
        Duration(milliseconds: Random().nextInt(2000) + 1000) , () => {
                if( data.statusCode == 200 ) {
                        _controller.add(ProcessLoginStatus.login)
                }
        });
    return '';
  }
}
