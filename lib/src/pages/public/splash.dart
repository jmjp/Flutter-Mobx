import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:un1verse/authenticate.dart';
import 'package:un1verse/main.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    getLogged();
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

}

void getLogged()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if(prefs.getString("token") == null || prefs.getString("token").isEmpty){
      auth.status = Status.Unauthenticated;
  }else{
      auth.status = Status.Authenticated;
  }
}