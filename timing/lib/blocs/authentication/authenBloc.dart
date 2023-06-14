import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:timeing/blocs/authentication/authenEvent.dart';
import 'package:timeing/blocs/authentication/authenState.dart';
import 'package:timeing/models/authentication.dart';

import '../../models/user.dart';
import '../../service/userService.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  AuthenticateBloc(
      {required AuthenticationRes authenticationRes, required UseService user})
      : _authenRes = authenticationRes,
        _user = user,
        super(const AuthenticateState.unknown()) {
    on<AuthenticateChangedLogin>();
    on<AuthenticateChangedLogout>();
    _controller = _authenRes.status.listen((status) => add(AuthenticateChangedLogin(status))) 
  }

  final AuthenticationRes _authenRes;
  final UseService _user;

  late StreamSubscription<AuthenticationStatus> _controller;


  @override
  Future<void> close() {
    // TODO: implement close
    _controller.cancel() ;  
    return super.close();
  }

  Future<void> _onAuthenticateChangedLogin(
    AuthenticateChangedLogin event ,  
    Emitter<AuthenticateState> emit) async {
      switch( event.status) {
        case AuthenticationStatus.authenticated : 
        final 
          emit( state.user != null )

        case AuthenticationStatus.unauthenticated : 
          emit(AuthenticateState.unauthenticated()) ;  

        case AuthenticationStatus.unknown:
      }
  }

  Future<User> _getUser() async {
      try{
            var user = _user.getUser(username: username, password: password) ;   
      }catch(_) {

      }
  } 

  
}
