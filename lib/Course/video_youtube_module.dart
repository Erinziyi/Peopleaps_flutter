
import 'package:flutter/material.dart';
import 'package:flutter_login_app/Course/video_chew_list_item.dart';
import 'package:video_player/video_player.dart';



class VideoViewPage extends StatelessWidget {
  static String tag = 'videoview-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        iconTheme: IconThemeData (
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text ('PEOPLEAPS',
          style: TextStyle (
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),
      ),


    );
  }
}
