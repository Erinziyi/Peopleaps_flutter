import 'package:flutter/material.dart';
import 'package:flutter_login_app/Dashboard/dashboard_page.dart';
import 'package:percent_indicator/percent_indicator.dart';



Widget actionPlanDashboardSlider(BuildContext context,){
  return Container(
    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0,0.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildActionPlanDashboardSlider(30.0)

      ],

    ),

  );
}

_buildActionPlanDashboardSlider(double height) {
  return Container(
    height: 300.0,
    margin: EdgeInsets.only(top: 10.0),
    child: ListView.builder(
      itemCount:10,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left:2.0),
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: SizedBox(
              width: 200.0,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(2.0, 10.0),
                              blurRadius: 10.0),
                        ]
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child:Image.asset('assets/course_picture.png', height: 100.0,fit:BoxFit.fill),
                      ),
                      new Container(
                        padding: EdgeInsets.all(10.0),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                new Text('What is your immediate action in implementing the knowledge',
                                  style:new TextStyle(
                                    color:Colors.black,
                                    fontSize:12.0,
                                    fontFamily:'Roboto',
                                  ),
                                ),
                              ],
                            ),
                           new Container(
                             margin: const EdgeInsets.only(top: 30.0),
                             child: new Row(
                               children: <Widget>[
                                 new Text('Incomplete',
                                   style:new TextStyle(
                                     color:Colors.lightGreenAccent[400],
                                     fontSize:12.0,
                                     fontFamily:'Roboto',
                                   ),
                                 ),
                               ],
                             ),
                           ),
                          new Container(
                            margin: const EdgeInsets.only(top: 20.0),
                            child:new  Row(
                              children: <Widget>[
                                  Padding(
                                   padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0,10.0),
                                    child: new Image.asset('assets/icon_date.png', height: 30.0,width: 30.0,),
                                  ),
                                Container(
                                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0,5.0),
                                  child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      new Text("Dateline",
                                        style:new TextStyle(
                                          color:Colors.grey[600],
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      new Text("16-05-2019",
                                        style:new TextStyle(
                                          color:Colors.black,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
        );
      },
    ),
  );
}


Widget trainingSessiondDashboardfSlider(BuildContext context,){
  return Container(
    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0,0.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTrainingSessiondDashboardfSlider(30.0)

      ],

    ),

  );
}

_buildTrainingSessiondDashboardfSlider(double height) {
  return Container(
    height: 300.0,
    margin: EdgeInsets.only(top: 10.0),
    child: ListView.builder(
      itemCount:10,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left:2.0),
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: SizedBox(
            width: 200.0,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2.0, 10.0),
                            blurRadius: 10.0),
                      ]
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.only(bottom: 40.0),
                  padding: EdgeInsets.all(5.0),
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        padding: EdgeInsets.all(5.0),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                new Text('Ms Excel Advanced',
                                  style:new TextStyle(
                                    color:Colors.black,
                                    fontSize:14.0,
                                    fontFamily:'Roboto',
                                  ),
                                ),
                              ],
                            ),
                            new Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              child: new Row(
                                children: <Widget>[
                                  Expanded(
                                    child: new Container(
//                                      margin: const EdgeInsets.only(left: 5.0, right:5.0),
                                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0,0.0),
                                        child: CustomPaint(painter: LineDashedPainter())

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              child:new  Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0,10.0),
                                    child: new Image.asset('assets/icon_date.png', height: 30.0,width: 30.0,),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0,5.0),
                                    child: new Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        new Text("Start Date",
                                          style:new TextStyle(
                                            color:Colors.grey[600],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        new Text("10/2/2019",
                                          style:new TextStyle(
                                            color:Colors.black,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              child:new  Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0,10.0),
                                    child: new Image.asset('assets/icon_date.png', height: 30.0,width: 30.0,),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0,5.0),
                                    child: new Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        new Text("End Date",
                                          style:new TextStyle(
                                            color:Colors.grey[600],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        new Text("10/10/2019",
                                          style:new TextStyle(
                                            color:Colors.black,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],

                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );

}


Widget browseCourseDashboardSlider(BuildContext context,){
  return Container(
    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0,0.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildBrowseCourseDashboardSlider(30.0)

      ],

    ),

  );
}

_buildBrowseCourseDashboardSlider(double height) {
  return Container(
    height: 300.0,
    margin: EdgeInsets.only(top: 10.0),
    child: ListView.builder(
      itemCount:10,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left:2.0),
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: SizedBox(
            width: 200.0,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2.0, 10.0),
                            blurRadius: 10.0),
                      ]
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child:Image.asset('assets/comptia_course_picture.jpg', height: 100.0,fit:BoxFit.fill),
                    ),
                    new Container(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:5.0,),
                            child: new LinearPercentIndicator(
                              padding: const EdgeInsets.symmetric(vertical: 2.0),
                              width:195,
                              lineHeight: 5.0,
                              percent: 0.5,
                              backgroundColor: Colors.grey[300],
                              progressColor: Colors.lightGreenAccent[700],
                            ),
                          ),

                        ],

                      ),

                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}









class LineDashedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    var paint = Paint();
    paint.color = Colors.grey[500];
    paint.strokeWidth = 1;
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

