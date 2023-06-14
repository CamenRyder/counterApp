import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class LoginState extends Equatable {
  LoginState(
      {this.username = '',
      this.password = '',
      this.isValid = false,
      this.status = FormzSubmissionStatus.initial});

  final String username;
  final String password;
  final FormzSubmissionStatus status;
  final bool isValid;

  LoginState copytWith(FormzSubmissionStatus? status, String? username,
      String? password, bool isValid) {
    return LoginState(
      
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [username, password, status, isValid];
}
