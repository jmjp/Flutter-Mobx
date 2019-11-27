import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:un1verse/src/pages/private/dashboard.dart';
import 'package:un1verse/src/pages/public/loginPage.dart';
import 'package:un1verse/src/pages/public/splash.dart';

import 'authenticate.dart';

final auth = Authenticate();


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX',
      theme: ThemeData.dark().copyWith(
        
      ),
      home: SetView(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class SetView extends StatelessWidget {
  const SetView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_){
          switch(auth.status){
            case Status.Authenticated:
              return Dashboard();
            case Status.Uninitialized:
              return SplashScreen();
            case Status.Authenticating:
            case Status.Unauthenticated:
              return LoginPage();
          }
        },
      );
  }
}