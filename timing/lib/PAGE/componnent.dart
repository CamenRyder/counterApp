// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeing/blocs/login/loginEvent.dart';
import 'package:timeing/blocs/login/loginState.dart';

import '../blocs/login/loginBloc.dart';

class UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
            onChanged: (username) => context
                .read<LoginBloc>()
                .add(OnUsernameEvent(username: username)),
            decoration: InputDecoration(
                prefixText: '  ',
                floatingLabelStyle: TextStyle(
                    color: Color.fromARGB(255, 151, 112, 48),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                alignLabelWithHint: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    gapPadding: 5.0,
                    borderSide: BorderSide(
                        width: 2.0, color: Color.fromARGB(255, 151, 112, 48))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    gapPadding: 5.0,
                    borderSide: BorderSide(
                        width: 2.0, color: Color.fromARGB(255, 151, 112, 48))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9), gapPadding: 6.0),
                labelText: 'username',
                labelStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                )),
          ),
        );
      },
    );
  }
}

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
            onChanged: (password) => context
                .read<LoginBloc>()
                .add(OnPasswordEvent(password: password)),
            decoration: InputDecoration(
                prefixText: '  ',
                floatingLabelStyle: TextStyle(
                    color: Color.fromARGB(255, 151, 112, 48),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                alignLabelWithHint: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    gapPadding: 5.0,
                    borderSide: BorderSide(
                        width: 2.0, color: Color.fromARGB(255, 151, 112, 48))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                    gapPadding: 5.0,
                    borderSide: BorderSide(
                        width: 2.0, color: Color.fromARGB(255, 151, 112, 48))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9), gapPadding: 6.0),
                labelText: 'password',
                labelStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                )),
          ),
        );
      },
    );
  }
}

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: SizedBox(
            width: 120,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromARGB(255, 75, 12, 7)),
                  foregroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 135, 89, 85)),
                ),
                onPressed: state.isValid
                    ? () {
                        context.read<LoginBloc>().add(OnSubbmited());
                      }
                    : null,
                child: const Text(
                  'login',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 151, 112, 48)),
                )),
          ),
        );
      },
    );
  }
}
