import 'package:flutter/material.dart';
import 'package:flutter_login_app/Dashboard/dashboard_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../login_page.dart';

class CourseListPage extends StatelessWidget {
  static String tag = 'courselist-page';

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 4,

      child: new Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          backgroundColor: Colors.blueAccent[400],

          title: Text('Course ' ,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),

          ),

          bottom: TabBar(

            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.only(right: 10.0, left: 10.0),
            indicatorSize: TabBarIndicatorSize.tab,

            tabs: [
              Tab(child: new Text('ALL',style: TextStyle(fontSize: 12.0,color: Colors.white),),),
              Tab(child: new Text('INCOMPLETE',style: TextStyle(fontSize: 12.0,color: Colors.white),),),
              Tab(child: new Text('COMPLETED',style: TextStyle(fontSize: 12.0,color: Colors.white),),),
              Tab(child: new Text('EXPIRED',style: TextStyle(fontSize: 12.0,color: Colors.white),),),
            ],

          ),

          bottomOpacity: 1,
        ),

        body: TabBarView(
          children: [
            CourseListContent(),
            CourseListContent(),
            CourseListContent(),
            CourseListContent(),


          ],


        ),

      ),
    );
  }

}



class CourseListContent extends StatefulWidget {

  @override
  _CourseListContentState createState() => _CourseListContentState();
}

class _CourseListContentState extends State<CourseListContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: new Column(

         children: <Widget>[
           new Expanded(
               child:new ListView.builder(
                   itemCount:10,
                   scrollDirection: Axis.vertical,
                   physics: BouncingScrollPhysics(),
                   itemBuilder:(context,index){
                     return new Padding(
                       padding: new EdgeInsets.all(5.0),
                       child: new Card(
                         color: Colors.white,
                         elevation: 4.0,
                         child: new Container(
                           height: 300.0,
                           child: new Column(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: <Widget>[
                               ClipRRect(
                                 borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(6.0),
                                   topRight: Radius.circular(6.0),

                                 ),
                                 child:Image.asset('assets/course_picture_1.png', height: 180.0,fit:BoxFit.fill),
                               ),
                               new Container(
                                 margin: EdgeInsets.only(left: 2.0),
                                 child: Row(
                                   children: <Widget>[
                                     Padding(
                                       padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0,2.0),
                                       child: new LinearPercentIndicator(
                                         padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0,2.0),
                                         width:370,
                                         lineHeight: 5.0,
                                         percent: 0.5,
                                         backgroundColor: Colors.grey[300],
                                         progressColor: Colors.lightGreenAccent[700],
                                       ),
                                     ),

                                   ],
                                 ),
                               ),
                               new Container(
                                 padding: EdgeInsets.all(8.0),
                                 child: new Column(
                                   mainAxisSize: MainAxisSize.min,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: <Widget>[
                                     Column(
                                       children: <Widget>[
                                         new Text('Goal Essential - Self Mastery & personal Effectiveness',
                                           style:new TextStyle(
                                             color:Colors.black,
                                             fontSize:16.0,
                                             fontFamily:'Roboto',
                                           ),
                                         ),

                                       ],
                                     ),
                                     new Container(
                                       margin: const EdgeInsets.only(top: 20.0),
                                       child: new Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: <Widget>[
                                           new Text('Expiry:15 Nov 2019',
                                             style:new TextStyle(
                                               color:Colors.grey[400],
                                               fontSize:14.0,
                                               fontFamily:'Roboto',
                                             ),
                                           ),
                                           new Text('100% Complete',
                                             style:new TextStyle(
                                               color:Colors.grey[400],
                                               fontSize:14.0,
                                               fontFamily:'Roboto',
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                   ],

                                 ),

                               )




                             ],

                           ),

                         ),


                       ),


                     );


                     }
                   ),
           ),
         ],
       ),

       


    );
  }
}


