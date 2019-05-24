import 'package:flutter/material.dart';


class  DiscussionTopicListPage extends StatelessWidget {
  static String tag ='discussiontopiclist-page';
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

      body: DiscussionListBodyLayout(),


    );
  }
}

class DiscussionListBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _discussionListView(context);


  }
}

Widget _discussionListView(BuildContext context) {

//  final titles = ['MS Exel Advanced',
//    'People 4.0 - Self Materry',
//    'SQL Server',
//    'Customer Service Skill',
//    'MS Exel Foundation',
//    'MS Exel Intermediate',
//    'Report Simplified',
//    'Goals Essential - Power Comunication & Interpersonl Comuncation'];


  return ListView.builder(
    itemCount:30,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text('Goals Essential - Power Comunication & Interpersonl Comuncation', style:new TextStyle(
            color:Colors.black,
            fontSize: 12.0,
          ),

          ),


        ),

      );
    },

  );
}

