import 'package:http/http.dart' as http;
import 'dart:convert';

String baseUrl = "http://10.0.2.2:3333";

class AuthService{
  Future<String> login(String password, String email)async{
    Map data = {
      "email": email,
      "password": password,
    };
    var response = await http.post("$baseUrl/authenticate",body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      return data["token"];
    }else{
      return "error";
    }
  }

  Future<bool> register(String password, String email,String username)async{
    Map data = {
      "email": email,
      "password": password,
      "username": username
    };
    var response = await http.post("$baseUrl/register",body: data);
    if(response.statusCode == 200){
      return true;
    }
    return false;
  }

}