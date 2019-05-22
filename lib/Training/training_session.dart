import 'package:flutter/material.dart';


class TrainingSessionPage extends StatefulWidget {
  static String tag = 'trainingsession-page';

  @override
  _TrainingSessionPageState createState() => _TrainingSessionPageState();
}

class _TrainingSessionPageState extends State<TrainingSessionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Training Session' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,

          ),

        ),



      ),

    );
  }
}

