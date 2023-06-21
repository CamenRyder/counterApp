import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:timeing/blocs/login/loginBloc.dart';
import 'package:timeing/blocs/login/loginState.dart';
import 'package:timeing/models/authentication.dart';

import '../BackGround/backgroundLogin.dart';
import '../page/componnent.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => LoginPage(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  var cl1 = TextEditingController();
  var cl2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 75, 12, 7),
          title: const Text(
            'login',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 151, 112, 48)),
          ),
        ),
        body: BlocProvider(
          create: ((context) {
            return LoginBloc(
                authenRes: RepositoryProvider.of<AuthenticationRes>(context));
          }),
          child: LoginForm(cl1: cl1, cl2: cl2,),
        ));
  }
}

class LoginForm extends StatelessWidget {
  var _cl1 = TextEditingController();
  var _cl2 = TextEditingController();
  LoginForm(
      {required TextEditingController cl1, required TextEditingController cl2});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status.isFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(content: Text('Authentication Failure')),
              );
          }
        },
        child: Stack(
          children: [
            const BG_login(),
            SafeArea(
              minimum: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 180,
                  ),
                  UsernameInput(controller: _cl1),
                  PasswordInput(controller: _cl2,),
                  ButtonLogin(controller1: _cl1,controller2:  _cl2,) ,
                  ForgotAndSignUp(),
                ],
              ),
            )
          ],
        ));
  }
}
