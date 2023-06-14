import 'package:equatable/equatable.dart';
import 'package:timeing/models/authentication.dart';
import 'package:timeing/models/user.dart';

class AuthenticateState extends Equatable {
  const AuthenticateState._(
      {this.status = AuthenticationStatus.unknown, this.user = User.empty});

  const AuthenticateState.unknown() : this._();
  const AuthenticateState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);
  const AuthenticateState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  @override
  // TODO: implement props
  List<Object?> get props => [status, user];
  final AuthenticationStatus status;
  final User user;
}
