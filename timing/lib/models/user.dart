import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class User extends Equatable {
  static const empty = User('-','-','-','-','-');
  final String username;
  final String password;
  final String number;
  final String dateSignUp;
  final String name;
  const User(
       this.username, 
       this.password,
       this.name,
       this.number,
       this.dateSignUp);
  @override
  // TODO: implement props
  List<Object?> get props => [username, password, name,number , dateSignUp, ];
}
