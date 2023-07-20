import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeing/blocs/authentication/authenBloc.dart';
import 'package:timeing/models/authentication.dart';
import 'package:timeing/page/appView.dart';


void main() {
  // callApiTest();
  runApp(const MyApp());
}

// Future<void> callApiTest() async {
//   UseService user = UseService();
//    user.loginUser(username: 'mhieusz.23.dkc@gmai.com',  password: 'minhhieu2003');
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createStat
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  late final AuthenticationRes _authenticationRes;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _authenticationRes = AuthenticationRes();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _authenticationRes.dispose();
  }
                
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return const MaterialApp(home: LoginPage());
    return RepositoryProvider.value(
      value: _authenticationRes,
      child: BlocProvider(
          child: AppView(),
          create: (_) =>
              AuthenticateBloc(authenticationRes: _authenticationRes)),
    );
  }
} 







  