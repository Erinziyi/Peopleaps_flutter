import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  static String tag ='report-page';
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Report' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,

          ),

        ),
      ),

    );
  }
}
