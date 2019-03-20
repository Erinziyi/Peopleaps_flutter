import 'package:flutter/material.dart';
import 'package:flutter_login_app/dashboard_page.dart';
import 'package:flutter_login_app/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    DashboardPage.tag: (context) => DashboardPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PEOPLEaps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
