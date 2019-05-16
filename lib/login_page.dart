import 'package:flutter/material.dart';
import 'package:flutter_login_app/Dashboard/dashboard_page.dart';

class LoginPage extends StatefulWidget{
  static String tag ='login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
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
          _showBody(),
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


        )
    );
  }



  Widget _emailInput() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
        child: new TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: new InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0)),

          ),


        )
    );
  }

  Widget _passwordInput() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
        child: new TextFormField(
          autofocus: false,
          obscureText: true,
          decoration: new InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0)),
          ),


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
        child: Text('Log in', style: TextStyle(color: Colors.white,fontSize: 18.0)),
      ),

    );
  }





  Widget _showBody(){
    return new Container(
      margin: const EdgeInsets.only(top:300.0),
        padding: EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            _portalInput(),
            _emailInput(),
            _passwordInput(),
            _loginButton(),


          ],
        ),



    );
  }
}

















