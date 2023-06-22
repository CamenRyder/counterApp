import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

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
 late final TextEditingController cl1;
 late final TextEditingController cl2;
  OnSubbmited(
      {required TextEditingController cl1, required TextEditingController cl2}); 
}
