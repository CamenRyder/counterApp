import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeing/blocs/authentication/authenBloc.dart';
import 'package:timeing/blocs/authentication/authenState.dart';
import 'package:timeing/models/authentication.dart';

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
                
                break;
              case AuthenticationStatus.authenticated:
                break;
            }
          },
        );
      },
    );
  }
}
