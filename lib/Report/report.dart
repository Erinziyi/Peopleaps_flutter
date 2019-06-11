import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'access_log_report_detail.dart';


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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                floating:true,
                pinned: false,
                snap: true,
                automaticallyImplyLeading: false,

                flexibleSpace: FlexibleSpaceBar(

                    background: new Stack(
                      children: <Widget>[
                        _buildHeader(context),

                      ],



                    )),
                backgroundColor: Colors.transparent,
              ),
              SliverPersistentHeader (

                delegate: _SliverAppBarDelegate(

                  TabBar(

                    labelColor: Colors.blueAccent,
                    indicatorColor:Colors.blueAccent,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(child: new Text('ACCESS LOG',style: TextStyle(fontSize: 12.0,),),),
                      Tab(child: new Text('QUIZ',style: TextStyle(fontSize: 12.0,),),),
                      Tab(child: new Text('ASSESMENT',style: TextStyle(fontSize: 12.0,),),),
                    ],
                  ),
                ),

                pinned: true,

              ),
            ];
          },
         body: new TabBarView(
             children: [
               accessLog(context),
               accessLog(context),
               accessLog(context),

             ],
         ),
        ),

      ),
    );
  }

}

Container _buildHeader(BuildContext context){
  return Container (
//    margin: EdgeInsets.only(top:50.0),
    height: 300.0,
    child: Stack(
      children: <Widget>[
        Container(

          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.lightBlueAccent[700]]
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0, bottom: 10.0),
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(height:50.0,),
                Text("John Doe", style: Theme.of(context).textTheme.title,),
                SizedBox(height: 5.0,),
                Text("UI/UX designer"),
                SizedBox(height: 10.0,),
            Container(
              height: 80.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new CircularPercentIndicator(
                    radius: 55.0,
                    lineWidth: 4.0,
                    percent: 0.60,
                    center: new Text("4/14"),
                    progressColor: Colors.lightGreenAccent[400],
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                  ),
                  new CircularPercentIndicator(
                    radius: 55.0,
                    lineWidth: 4.0,
                    percent: 0.90,
                    center: new Text("10/14"),
                    progressColor: Colors.redAccent[700],
                  )
                ],
              ),
            ),

                Container(
                  height:30.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text("Completed",style:new TextStyle(
                        color:Colors.grey,
                        fontSize: 14.0,),

                      ),
                      new Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                      ),
                      new Text("Incomplete",style:new TextStyle(
                        color:Colors.grey,
                        fontSize: 14.0,),
                      ),
                    ],
                  ),
                ),
            ],
            ),
            ),
         ),
        Container(
          padding: EdgeInsets.only(top:20.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                elevation: 5.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  radius: 32.0,
                  backgroundImage: AssetImage('assets/profile_pic.png'),
                ),
              )
            ],

          ),
        )

      ],
    ),

  );
}






class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}






















// Background Top Header
class DialogonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height -120.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
