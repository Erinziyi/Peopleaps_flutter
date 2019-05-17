import 'package:flutter/material.dart';
import 'package:flutter_login_app/Dashboard/dashboard_page.dart';

import '../login_page.dart';



class CourseListPage extends StatefulWidget{
  static String tag ='courselist-page';
  @override
  _CourseListPageState createState() => _CourseListPageState();
}


class _CourseListPageState extends State<CourseListPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course'),
      ),

    );
  }

}







