import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:timeing/blocs/login/loginEvent.dart';
import 'package:timeing/blocs/login/loginState.dart';
import 'package:timeing/models/authentication.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthenticationRes authenRes})
      : _authenRes = authenRes,
        super(LoginState()) {
    on<OnUsernameEvent>(_onUsernameChanged);
    on<OnPasswordEvent>(_onPasswordChanged);
    on<OnSubbmited>(_onSubmitted);
  }
  final AuthenticationRes _authenRes;
  void _onUsernameChanged(OnUsernameEvent event, Emitter<LoginState> emit) {
    var username = event.username;
    emit(state.copytWith(
      username: username,
       isValid: (state.password == '' || username == '') ? false : true
    ));
  }
  void _onPasswordChanged(OnPasswordEvent event, Emitter<LoginState> emit) {
    var password = event.password;
    emit(state.copytWith(password: password , isValid: (password == '' || state.username == '') ? false : true));
  }
  Future<void> _onSubmitted(OnSubbmited event, Emitter<LoginState> emit) async {
    if (state.isValid) {
      emit(state.copytWith(status: FormzSubmissionStatus.inProgress,
      ));
      // try {
       int value =  await _authenRes.login(
            username: state.username, password: state.password);
            if(value== 1) {
        emit(state.copytWith(status: FormzSubmissionStatus.success)); 
            }else if (value == 0)  {
        emit(state.copytWith(status: FormzSubmissionStatus.failure, isValid: false, username: '',password: '')); 
            }
      // } catch (_) {
      //   emit(state.copytWith(status: FormzSubmissionStatus.failure, isValid: false, username: '',));

      // }
    }
  }
}
