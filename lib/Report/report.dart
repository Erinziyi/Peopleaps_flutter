import 'package:flutter/material.dart';
import 'dart:math' as Math;
import 'package:flutter/widgets.dart';
import 'package:flutter_login_app/Material/progress_card.dart';

class ReportPage extends StatefulWidget {
  ReportPage({Key key}) : super(key: key);
  static String tag ='report-page';
  @override
  _ReportPageState createState() => _ReportPageState();
}
ScrollController _controller;
class _ReportPageState extends State<ReportPage> {


  double _imageHeight = 256.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        iconTheme: IconThemeData (
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text ('Report',
          style: TextStyle (
            fontSize: 16.0,
            color: Colors.white,

          ),

        ),
      ),
      body: new Center(
        child: CustomScrollView(
          controller: _controller,

        ),
      ),



    );
  }
  Widget _buildIamge() {
    return new ClipPath(
      clipper: new DialogonalClipper(),
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.lightBlueAccent,

        ),
        height: _imageHeight,


      ),
    );
  }


  Widget _buildProfileRow() {
    return new Padding(
      padding: new EdgeInsets.only(left: 16.0, top: _imageHeight / 2.5),
      child: new Row(
        children: <Widget>[
          new CircleAvatar(
            minRadius: 24.0,
            maxRadius: 24.0,
            backgroundImage: new AssetImage('assets/profile_pic.png'),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text(
                  'Erin',
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResultRow(){
    return Container(
      child: new Row(
        children: <Widget>[
          new Row(
            children: <Widget>[

            ],

          ),
        ],
      ),

    );

  }



}






// Background Top Header
class DialogonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height - 60.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
