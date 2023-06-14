import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class OnUsernameEvent extends LoginEvent {
  OnUsernameEvent({required this.username});
  @override
  // TODO: implement props
  List<Object?> get props => [username];
  final String username;
}

class OnPasswordEvent extends LoginEvent {
  OnPasswordEvent({required this.password});
  final String password;
  @override
  // TODO: implement props
  List<Object?> get props => [password];
}

class OnSubbmited extends LoginEvent {
   OnSubbmited();  
}
