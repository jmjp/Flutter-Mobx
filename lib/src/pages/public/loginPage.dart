import 'package:flutter/material.dart';
import 'package:un1verse/main.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> _scafoldkey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldkey,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.black54,
                  
                ),
                margin: EdgeInsets.only(left: 10,right: 10),
                padding: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _email,
                        validator: (data){
                           if(data.isEmpty && data.length < 10 && !data.contains("@")){
                             return "Verifique o email digitado";
                           }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(14),
                          filled: true,
                          labelText: "Email",
                          hintText: "Email@provedor.com",
                          labelStyle: TextStyle(color: Colors.white),
                          alignLabelWithHint: false,
                          fillColor: Colors.black.withOpacity(0.8),
                          suffixIcon: Icon(Icons.email,color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(3)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(3)
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: TextFormField(
                          controller: _password,
                          validator: (data){
                            if(data.isEmpty && data.length <= 3){
                              return "Verifique o a senha digitada";
                            }
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(14),
                            filled: true,
                            labelText: "Senha",
                            hintText: "senha123**",
                            labelStyle: TextStyle(color: Colors.white),
                            alignLabelWithHint: false,
                            fillColor: Colors.black.withOpacity(0.8),
                            suffixIcon: Icon(Icons.security, color: Colors.grey,),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(3)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(3)
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        elevation: 12,
                        child: Text("Login",style: TextStyle(fontSize: 24),),
                        minWidth: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Colors.deepPurple,
                        onPressed: (){
                          if(_formkey.currentState.validate()){
                            auth.login(_email.text, _password.text);
                          }
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  @override
  void dispose() {
      _password.dispose();
      _email.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}