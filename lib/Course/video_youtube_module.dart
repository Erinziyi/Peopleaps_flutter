import 'package:flutter/material.dart';


class VideoYouTubeViewPage extends StatelessWidget {
  static String tag = 'videoyoutubeview-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold (
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
