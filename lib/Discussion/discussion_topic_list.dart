import 'package:flutter/material.dart';


class DiscussionTopicListPage extends StatefulWidget {
  static String tag ='discussiontopiclist-page';
  @override
  _DiscussionTopicListPageState createState() => _DiscussionTopicListPageState();
}

class _DiscussionTopicListPageState extends State<DiscussionTopicListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Discussion' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,

          ),

        ),


      ),

    );
  }
}
