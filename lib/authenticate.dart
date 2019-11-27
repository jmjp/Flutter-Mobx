import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './src/services/authservice.dart';

part 'authenticate.g.dart';

class Authenticate = _Authenticate with _$Authenticate;
AuthService api = new AuthService();

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

abstract class _Authenticate with Store{
  @observable 
  Status status = Status.Uninitialized;

  @action
  void login(String email, String password)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if(email.isNotEmpty && password.isNotEmpty){
      status = Status.Authenticating;
      api.login(password, email).then((onValue)async{
        if(onValue != "error"){
          await prefs.setString('token', onValue);
          status = Status.Authenticated;
        }else{
          status = Status.Unauthenticated;
        }
      });
    }

  }

  @action
  void logout()async{
    status = Status.Unauthenticated;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("token");
  }

  dispose();
}