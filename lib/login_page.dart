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

class _LoginPageForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Bloc();
    return Container(
      child: new Container(
        height:MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(16),
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            StreamBuilder<String>(
              stream: bloc.email,
              builder: (context,snapshot)=>TextField(
                onChanged: bloc.emailChanged,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:"Enter email",
                    labelText: "Email",
                    errorText: snapshot.error  //if error
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            // password Text Field
            StreamBuilder<String>(
              stream: bloc.password,
              builder:(context,snapshot)=>TextField(
                onChanged: bloc.passwordChanged,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter password",
                    labelText: "Password",
                    errorText: snapshot.error //if error
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

          ],
        ),



      ),


    );
  }


}










