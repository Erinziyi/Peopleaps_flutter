import 'package:flutter/material.dart';
import 'package:flutter_login_app/dashboard_page.dart';

class LoginPage extends StatefulWidget{
  static String tag ='login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

 enum FormMode{LOGIN,SIGNUP}

 class _LoginPageState extends State<LoginPage> {


   String _email;
   String _password;
   String _errorMessage;


   @override
   Widget build(BuildContext context) {
     Widget _showLogo() {
       return new Hero(
         tag: 'hero',
         child: Image.asset('assets/peopleapslogo.png'),

       );
     }

     Widget _emailInput() {
       return Padding(
           padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
           child: new TextFormField(
             keyboardType: TextInputType.emailAddress,
             autofocus: false,
             decoration: new InputDecoration(
               hintText: 'Email',
               border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20.0)),

             ),

             validator: (value) =>
             value.isEmpty
                 ? 'Email can\'t be empty': null,
             onSaved: (value) => _email = value,
           )
       );
     }

     Widget _passwordInput() {
       return Padding(
           padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
           child: new TextFormField(
             autofocus: false,
             obscureText: true,
             decoration: new InputDecoration(
               hintText: 'Password',
               border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20.0)),
             ),

             validator: (value) =>
             value.isEmpty
                 ? 'Password can\'t be empty'
                 : null,
             onSaved: (value) => _password = value,
           )

       );
     }

     Widget _loginButton() {
       return new Padding(
         padding: EdgeInsets.symmetric(vertical: 16.0),
         child: RaisedButton(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20),
           ),
           onPressed: () {
             Navigator.of(context).pushNamed(DashboardPage.tag);
           },

           padding: EdgeInsets.all(12),
           color: Colors.lightBlueAccent,
           child: Text('Log In', style: TextStyle(color: Colors.white)),
         ),

       );
     }



    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right: 24.0),
         children: <Widget>[
           _showLogo(),
           _emailInput(),
           _passwordInput(),
           _loginButton(),

         ],
        ),
      ),
    );
   }
 }

