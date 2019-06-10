import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';


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
    _tabController = TabController(vsync: this, length: 2);
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
                expandedHeight: 200.0,
                floating:true,
                pinned: false,
                automaticallyImplyLeading: false,

                flexibleSpace: FlexibleSpaceBar(

                    background: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",

                      fit: BoxFit.cover,
                    )),
                backgroundColor: Colors.transparent,
              ),
              SliverPersistentHeader(

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
          body: Center(
            child: Text("Sample text"),
          ),
        ),
      ),
    );
  }

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
