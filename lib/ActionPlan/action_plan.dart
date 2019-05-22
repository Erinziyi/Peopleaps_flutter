import 'package:flutter/material.dart';

class ActionPlanPage extends StatefulWidget {
  static String tag = 'actionplan-page';


  @override
  _ActionPlanPageState createState() => _ActionPlanPageState();
}

class _ActionPlanPageState extends State<ActionPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Action Plan' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,

          ),

        ),
      ),

    );
  }
}
