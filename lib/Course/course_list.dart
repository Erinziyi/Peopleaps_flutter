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
    return new DefaultTabController(
      length: 4,
      child: new Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          backgroundColor: Colors.blueAccent[400],

          title: Text('Course List' ,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),

          ),

          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.grey[300],
            indicatorColor: Colors.white,
            tabs: [
              Tab(child: new Text('ALL',style: TextStyle(fontSize: 12.0,color: Colors.white),),),
              Tab(text:'INCOMPLETE',),
              Tab(text:'COMPLETED',),
              Tab(text:'EXPIRED',),
            ],
          ),
        ),

      ),



    );

  }

}







