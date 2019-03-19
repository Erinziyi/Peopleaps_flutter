import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  static String tag ='login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

 enum FormMode{LOGIN,SIGNUP}

 class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    Widget _showLogo() {
      return new Hero(
        tag: 'hero',
        child: Image.asset('assets/peopleapslogo.png'),

      );
    }
    
    Widget _emailInput(){
      return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: new TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: new InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),

          ),

          validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
          onSaved: (value) => _email = value,
        )
      );
    }

    Widget _paswordInput(){
      return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: new TextFormField(
          autofocus: false,
          obscureText: true,
          decoration: new InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          ),

          validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
          onSaved: (value) => _password = value,
        )

      );

    }



    Widget _showBody(){
      return new Container(
          padding: EdgeInsets.all(16.0),
          child: new Form(
            key: _formKey,
            child: new ListView(
              shrinkWrap: true,
              children: <Widget>[
                _showLogo(),
                _emailInput(),
                _paswordInput(),
               
              ],
            ),
          ));
    }
  }
}