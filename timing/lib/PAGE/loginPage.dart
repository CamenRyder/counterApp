import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:timeing/blocs/login/loginBloc.dart';
import 'package:timeing/blocs/login/loginState.dart';
import 'package:timeing/models/authentication.dart';

import '../BackGround/backgroundLogin.dart';
import '../page/componnent.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder:(context) =>  LoginPage(),) ;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _LoginPage() ;  
  }

}

class _LoginPage extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
          appBar: AppBar(
            title: const Text(
              'login',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          body: BlocProvider(create: ((context) {
              return LoginBloc(authenRes: RepositoryProvider.of<AuthenticationRes>(context)) ;
          }),
          child: LoginForm(),
          ) ); 
  }

}

class LoginForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocListener<LoginBloc,LoginState>(
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
                  minimum: const EdgeInsets.all(10),
                  child: Center(
                      child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 200),
                    child: Column(
                      children: [
                        UsernameInput(),
                        PasswordInput(),
                        ButtonLogin()
                      ],
                    ),
                  )))
            ],
          )
    );

  }

}


