import 'package:flutter/material.dart';
import 'package:path/path.dart';


class CourseListDetailPage extends StatelessWidget {


  static String tag ='courselistdetail-page';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue[200],

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
    return  ModuleListRow();


  }
}


class ModuleListRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          moduleListCard,
          articleThumbnail,


        ],
      ),
    );
  }
}

  final articleThumbnail = new Container(
  margin: new EdgeInsets.symmetric(
     vertical: 16.0
    ),
   alignment: FractionalOffset.centerLeft,
   child: new Image(
     image: new AssetImage("assets/module_list_quiz.png"),
     height: 80.0,
     width: 80.0,

   ),



  );

    final moduleListCard = new Container(
        height: 120.0,
        margin: new EdgeInsets.only(left: 46.0),
        decoration: new BoxDecoration(
         color: new Color(0xFF1976D2),
         shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
        new BoxShadow(
         color: Colors.black12,
          blurRadius: 10.0,
         offset: new Offset(0.0, 10.0),
        ),
     ],
   ),
  );


