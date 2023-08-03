
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:timeing/blocs/login/loginBloc.dart';
import 'package:timeing/blocs/login/loginEvent.dart';
import 'package:timeing/blocs/login/loginState.dart';
import 'package:timeing/models/authentication.dart';

import '../../BackGround/backgroundLogin.dart';
import 'componnent.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const LoginPage(),
    ); 
  }

  @override
  State<StatefulWidget> createState() {

    return _LoginPage();
  }
}
class _LoginPage extends State<LoginPage> {
  var cl1 = TextEditingController();
  var cl2 = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 75, 12, 7),
          title: const Text(
            'Login',
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
          child: LoginForm(
            cl1: cl1,
            cl2: cl2,
          ),
        ));
  }
}

class LoginForm extends StatelessWidget {
  final _cl1 = TextEditingController();
  final _cl2 = TextEditingController();
  LoginForm(
      {required TextEditingController cl1, required TextEditingController cl2});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          print(state.status);
          if (state.status.isFailure) {
            _cl1.clear();
            _cl2.clear();
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(
                  content: Text('Sai mat khau? '),
                  duration: Duration(milliseconds: 4500),
                ),
              );
            print('adduu ?');
            context.read<LoginBloc>().add(OnReset());
            print('duuu?');
          }
        },
        child: Stack(
          children: [
            const BG_login(),
            SafeArea(
              minimum: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 180,
                  ),
                  UsernameInput(controller: _cl1),
                  PasswordInput(
                    controller: _cl2,
                  ),
                  ButtonLogin(
                    controller1: _cl1,
                    controller2: _cl2,
                  ),
                  ForgotAndSignUp(),
                ],
              ),
            )
          ],
        ));
  }
}
