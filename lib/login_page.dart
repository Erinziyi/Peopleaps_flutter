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
   String _portalid;


   @override
   Widget build(BuildContext context) {
     return new Scaffold(
       body: new Stack(

         children: <Widget>[
           _showBody(),

           new Container(
             constraints: new BoxConstraints.expand(
               height:300.00,
             ),
             alignment: Alignment.bottomCenter,
             padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
             decoration: new BoxDecoration(
               image: new DecorationImage(image: new AssetImage('assets/login_domain_background.png'),fit: BoxFit.cover,
               ),
             ),
             child: Image.asset('assets/login_domain_logo.png',height: 800,width: 280,),

           ),



         ],


       ),
     );

   }


   Widget _portalInput() {
     return Padding(
         padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
         child: new TextFormField(
           keyboardType: TextInputType.text,
           autofocus: false,
           decoration: new InputDecoration(
             hintText: 'Portal ID',
             border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(100.0)),

           ),

           validator: (value) =>
           value.isEmpty
               ? 'Portal ID can\'t be empty': null,
           onSaved: (value) => _portalid = value,
         )
     );
   }



   Widget _emailInput() {
     return Padding(
         padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0,15.0),
         child: new TextFormField(
           keyboardType: TextInputType.emailAddress,
           autofocus: false,
           decoration: new InputDecoration(
             hintText: 'Email',
             border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(150.0)),

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
         padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0,15.0),
         child: new TextFormField(
           autofocus: false,
           obscureText: true,
           decoration: new InputDecoration(
             hintText: 'Password',
             border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(150.0)),
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
       padding: EdgeInsets.symmetric(vertical: 18.0,horizontal: 60.0),
       child: RaisedButton(
         elevation: 8.0,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(25),
         ),
         onPressed: () {
           Navigator.of(context).pushNamed(DashboardPage.tag);
         },

         padding: EdgeInsets.all(12),
         color: Colors.blueAccent[400],
         child: Text('Log In', style: TextStyle(color: Colors.white,fontSize: 18.0)),
       ),

     );
   }





   Widget _showBody(){
     return new Container(
         margin: const EdgeInsets.only(top:300.0),
         padding: EdgeInsets.all(40.0),
         child: new Form(
           child: new ListView(
             shrinkWrap: true,
             children: <Widget>[
               _portalInput(),
               _emailInput(),
               _passwordInput(),
               _loginButton(),


             ],
           ),
         )

     );


   }










 }


