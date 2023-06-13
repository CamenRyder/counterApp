import 'dart:async';

enum AuthenticationStatus { unknown, unauthenticated, authenticated }

class AuthenticationRes {
  final _controller = StreamController<AuthenticationStatus>();
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(milliseconds: 1000));
    yield AuthenticationStatus.authenticated;
    yield* _controller.stream;   
  }

  Future<void> login({
    required String username , 
    required String password ,    
  }) async {

  }
}
