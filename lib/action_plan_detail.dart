import 'package:flutter/material.dart';

class ActionPlanDetailPage extends StatelessWidget {
  static String tag = 'actionplandetail-page';

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
