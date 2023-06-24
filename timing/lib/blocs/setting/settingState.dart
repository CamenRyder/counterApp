import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:timeing/blocs/login/loginState.dart';

class SettingState extends Equatable {
  // final int duration; // truoc mat build logout bloc!
  final FormzSubmissionStatus status;
  SettingState({this.status = FormzSubmissionStatus.initial});

  SettingState copyWith({FormzSubmissionStatus? status}) {
    return SettingState(status: status ?? this.status);
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => [status];
}
