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

class _ReportPageState extends State<ReportPage>with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }



  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  double _imageHeight = 256.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Report' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),
      ),

      body: new Center(
        child: new Container(
          child: CustomScrollView(
            controller: _controller,
            slivers:<Widget>[
              SliverAppBar(
                  pinned: true,
                  expandedHeight: 250.0,
                  floating: true,
                flexibleSpace: FlexibleSpaceBar(

                 ),

              ),
            ]
          ),
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
