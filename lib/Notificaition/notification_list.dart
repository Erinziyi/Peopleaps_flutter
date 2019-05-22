import 'package:flutter/material.dart';


class NotificationPage extends StatefulWidget {
  static String tag ='notification-page';

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Notification' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),



      ),

    );
  }
}
