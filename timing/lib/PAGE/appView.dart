import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeing/blocs/authentication/authenBloc.dart';
import 'package:timeing/blocs/authentication/authenState.dart';
import 'package:timeing/models/authentication.dart';
import 'package:timeing/page/counterPage.dart';
import 'package:timeing/page/loginPage.dart';
import 'package:timeing/page/passwordPage.dart';

import '../PAGE/splashPage.dart';

class AppView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppView();
  }
}

class _AppView extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        navigatorKey: _navigatorKey,
        builder: (context, child) {
          return BlocListener<AuthenticateBloc, AuthenticateState>(
            listener: (context, state) {
              switch (state.status) {
                case AuthenticationStatus.unknown:
                  break;
                case AuthenticationStatus.unauthenticated:
                  _navigator.pushAndRemoveUntil<void>(
                      LoginPage.route(), (route) => false);
                  // ForgotPassword.route(),
                  // (route) => false);
                  break;
                case AuthenticationStatus.authenticated:
                  //  Future<void>.delayed(Duration(seconds: 2), () {

                  // });
                  // _navigator.pushAndRemoveUntil<void>(
                  //     SplashPage.route(), (route) => false);
                  _navigator.pushAndRemoveUntil<void>(
                      CounterPage.route(), (route) => false);
                  break;
              }
            },
            child: child,
          );
        },
        onGenerateRoute: (_) => SplashPage.route());
  }
}
