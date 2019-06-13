import 'package:flutter/material.dart';
import 'package:path/path.dart';


class CourseListDetailPage extends StatelessWidget {

  static String tag ='courselistdetail-page';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(135,206, 250, 1.0),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Goals Essential - Self Mastery & Personal Effectiveness',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),
      ),

      body: ModuleListBodyLayout(),




    );
  }
}


class ModuleListBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return accessLog(context);


  }
}


Widget accessLog (BuildContext context){
  return ListView.builder(
    scrollDirection: Axis.vertical,
    itemExtent: 100.0,
    itemBuilder: (BuildContext context, int index) {
      return makeCard;
    },

  );
}






final makeCard = Card(
  elevation: 8.0,
  margin: new EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
  child: Container(
    decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
    child: makeListTile,
  ),
);

final makeListTile = ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    leading: Container(
      padding: EdgeInsets.only(right: 12.0),
      decoration: new BoxDecoration(
          border: new Border(
              right: new BorderSide(width: 1.0, color: Colors.white24))),
      child: Icon(Icons.autorenew, color: Colors.white),
    ),
    title: Text(
      "Introduction to Driving",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

    subtitle: Row(
      children: <Widget>[
        Icon(Icons.linear_scale, color: Colors.yellowAccent),
        Text(" Intermediate", style: TextStyle(color: Colors.white))
      ],
    ),
    trailing:
    Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0));




