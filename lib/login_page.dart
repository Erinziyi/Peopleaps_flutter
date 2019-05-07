import 'package:flutter/material.dart';
import 'package:flutter_login_app/dashboard_page.dart';


import 'Blocs/login_bloc.dart';



class LoginPage extends StatefulWidget{

  static String tag ='login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}



 class _LoginPageState extends State<LoginPage> {



  @override
   Widget build(BuildContext context) {

    return new Scaffold(
       body: new SingleChildScrollView(
         child: new Container(
           child: new Stack(
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
         ),
       ),
     );

   }
}

Widget _portalField() {
  final bloc = Bloc();
  return StreamBuilder<String>(
    stream: bloc.portal,
    builder:(context,snapshot)=>TextField(
      onChanged: bloc.portalChanged,
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Enter Portal Id",
          labelText: "Portal Id",
          errorText: snapshot.error //if error
      ),
    ),
  );
}


Widget _emailField() {
  final bloc = Bloc();
  return StreamBuilder<String>(
    stream: bloc.email,
    builder:(context,snapshot)=>TextField(
      onChanged: bloc.emailChanged,
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Enter email",
          labelText: "Email",
          errorText: snapshot.error //if error
      ),
    ),
  );
}



Widget _passwordField() {
  final bloc = Bloc();
  return StreamBuilder<String>(
    stream: bloc.password,
    builder:(context,snapshot)=>TextField(
      onChanged: bloc.passwordChanged,
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Enter password",
          labelText: "Password",
          errorText: snapshot.error //if error
      ),
    ),
  );
}


Widget _loginbutton(){
  final bloc = Bloc();
  return StreamBuilder<bool>(
    stream: bloc.sumbitCheck,
    builder: (context,snapshot)=>RaisedButton(
      color: Colors.blueAccent,
      onPressed: snapshot.hasData?()=>changeThePage(context):null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      child:Text("Star Learn Today"),

    )
  );

}

changeThePage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DashboardPage()));

}




Widget _showBody(){

  return new Container(
      margin: const EdgeInsets.only(top:300.0),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            _portalField(),
            _emailField(),
            _passwordField(),
            _loginbutton(),

        ],

      )
  );
}




















