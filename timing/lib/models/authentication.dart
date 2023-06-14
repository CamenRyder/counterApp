import 'dart:async';

import 'package:timeing/service/userService.dart';

enum AuthenticationStatus { unknown, unauthenticated, authenticated }

class AuthenticationRes {
  final _controller = StreamController<AuthenticationStatus>();
  late final UseService useService;

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    useService = UseService();
    final  data = useService.loginUser(username: username, password: password) ;
    await Future<void>.delayed(Duration(microseconds: 400), () => {
      if(data == 200 ) 
      {
        _controller.add(AuthenticationStatus.authenticated) 
      }else _controller.add(AuthenticationStatus.unauthenticated) 
    } ) ;
    
  }
    void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
