import 'package:flutter/material.dart';
import 'package:flutter_login_app/Constains.dart';
import 'package:path/path.dart';

import 'Constants/fonts.dart';


class DashboardPage extends StatelessWidget {
  static String tag = 'dashboard-page';

  ScrollController scrollController;
  var cardIndex = 0;

  @override
  void initState() {
    scrollController = new ScrollController();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Container(
              constraints: new BoxConstraints.expand(
                height:300.00,
              ),
              alignment: Alignment.bottomCenter,
              padding: new EdgeInsets.only(left:8.0, bottom: 8.0),
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage('assets/login_domain_background.png'),fit: BoxFit.cover,
                ),
              ),
            ),
            bodyScrollviewContent(context)
          ],
        ),
      ),
    );
  }

  /*This is header section to handle profile image, email, name and dropdown button*/
  Widget headerSection() {
   return new Container(
     margin: const EdgeInsets.only(top:30.0),
     child: new Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0,10.0),
          child: new CircleAvatar(
            backgroundImage: new AssetImage('assets/profile_pic.png'),
            radius:24.0,
          ),
          ),
         Container(
           padding: new EdgeInsets.only(left:20.0),
           child: new Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               new Text("Erin",
                 style:new TextStyle(
                     color:Colors.white,
                     fontSize: 16.0,
                 ),
               ),
               new Text("erin@peoplelogy.com",
                 style:new TextStyle(
                   color:Colors.white,
                   fontSize: 16.0,
                 ),
               ),
             ],
           ),
         ),
         Container(
           padding: new EdgeInsets.only(left:50.0),
           child: new Column(
             mainAxisAlignment:MainAxisAlignment.spaceAround,
             children: <Widget>[
              Image.asset('assets/icon_setting_profile.png', height: 50.0,width:50.0 ),
             ],
           ),
         ),
       ],
     ),
   );
  }

/*This is menu section to handle 6 buttons*/
Widget menuSection(BuildContext context, int width_percent){

  //All the menu icon and label set here. After that, generateMenuItems() function will render its menu automatically
  List<MenuItem> menuItem  =  new List<MenuItem>();
  List<MenuItem> menuItemTwo  =  new List<MenuItem>();

  //Column one

  MenuItem course = new MenuItem();
  course.label  = "Course";
  course.image  = "assets/icon_course.png";
  menuItem.add(course);

  MenuItem training = new MenuItem();
  training.label  = "Training";
  training.image  = "assets/icon_training.png";
  menuItem.add(training);

  MenuItem discussion = new MenuItem();
  discussion.label  = "Discussion";
  discussion.image  = "assets/icon_discussion.png";
  menuItem.add(discussion);

  //Column two

  MenuItem notification = new MenuItem();
  notification.label  = "Notification";
  notification.image  = "assets/icon_notification.png";
  menuItemTwo.add(notification);

  MenuItem actionplan = new MenuItem();
  actionplan.label  = "Action Plan";
  actionplan.image  = "assets/icon_action_plan.png";
  menuItemTwo.add(actionplan);

  MenuItem report = new MenuItem();
  report.label  = "Report";
  report.image  = "assets/icon_report.png";
  menuItemTwo.add(report);


  return new Card(
    color: Colors.white,
    elevation: 4.0,
    child: Container(
      margin: const EdgeInsets.only(top:10.0),
      height: 250.0,
      width: MediaQuery.of(context).size.width * width_percent,


      child:new Column(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0,5.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: generateMenuItems(menuItem),
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0,0.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: generateMenuItems(menuItemTwo),
            ),
          )
        ],
      ),

    ),
  );
}

Widget actionPlanSection (BuildContext context, ){

  List<CourseItem> courseItem  =  new List<CourseItem>();
  CourseItem  cit = new CourseItem();
  cit.title = "abc course";
  cit.image = "....";
  cit.status = "Incomplete";
  cit.dateline  = "03-03-2019";
  
  courseItem.add(cit);

  return Container(
    padding: const EdgeInsets.fromLTRB(2.0, 20.0, 2.0,0.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        buildContentTitle('Action Plan'),
          buildContenttext('Due Date'),
          new Container(
            child: new Row(
              mainAxisSize:MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               new Container(
                 padding: const EdgeInsets.fromLTRB(0.0, 0.0, 1.0,0.0),
                 margin: const EdgeInsets.only(top: 10.0),
                 height: 95,
                 width: 120.0,
                 child: new Card(
                   color: Colors.white,
                   elevation: 4.0,
                   child: new Container(
                     padding: EdgeInsets.all(5.0),
                     child: new Column(
                       mainAxisSize: MainAxisSize.min,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Row(
                           children: <Widget>[
                             new Text('0',
                               style:new TextStyle(
                                 color:Colors.indigoAccent[700],
                                 fontSize:34.0,
                                 fontFamily:'Roboto',
                               ),
                             ),
                           ],
                         ),
                         Row(
                           children: <Widget>[
                             Expanded(
                               child: new Container(
                                 margin: const EdgeInsets.only(left: 2.0, right:2.0),
                                 child: Divider(
                                   color: Colors.grey[600],
                                   height: 20,
                                 ),
                               ),
                             )
                           ],
                         ),
                         Row(
                           children: <Widget>[
                             new Text('This Month',
                               style:new TextStyle(
                                 color:Colors.blueGrey[200],
                                 fontSize:12.0,
                                 fontFamily:'Roboto',
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
                new Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 1.0,0.0),
                  margin: const EdgeInsets.only(top: 10.0),
                  height: 95,
                  width: 120.0,
                  child: new Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: new Container(
                      padding: EdgeInsets.all(5.0),
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              new Text('0',
                                style:new TextStyle(
                                  color:Colors.blue[200],
                                  fontSize:34.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: new Container(
                                  margin: const EdgeInsets.only(left: 2.0, right:2.0),
                                  child: Divider(
                                    color: Colors.grey[600],
                                    height: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              new Text('Next Month',
                                style:new TextStyle(
                                  color:Colors.blueGrey[200],
                                  fontSize:12.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                new Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 1.0,0.0),
                  margin: const EdgeInsets.only(top: 10.0),
                  height: 95,
                  width: 120.0,
                  child: new Card(
                    color: Colors.white,
                    elevation: 4.0,

                    child: new Container(
                      padding: EdgeInsets.all(5.0),
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              new Text('1',
                                style:new TextStyle(
                                  color:Colors.grey[400],
                                  fontSize:34.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: new Container(
                                  margin: const EdgeInsets.only(left: 2.0, right:2.0),
                                  child: Divider(
                                    color: Colors.grey[600],
                                    height: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              new Text('Overdue',
                                style:new TextStyle(
                                  color:Colors.blueGrey[200],
                                  fontSize:12.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
  );
}

  Widget bodyScrollviewContent(BuildContext context) {
    return new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            headerSection(),
            menuSection(context, 95),
            actionPlanSection(context),
          ],
        )
    );
  }

  /*Item type : 0 = action plan, 1 = Training session, 2 = Course item*/
  Widget horizontalScrollView(BuildContext context, List<List> courseItems, int itemType) {
    return  new ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      controller: scrollController,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, position) {

        switch (itemType){
          case 0:

            break;
          case 1:

            break;
          case 2:

            break;
        }
      },
    );
  }


  Widget actionPlanScrollItem(List<CourseItem> courseItems,int position) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Container(
            width: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(courseItems[position].title, color: appColors[position],),
                      Icon(Icons.more_vert, color: Colors.grey,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        child: Text("${courseItems[position].title} Tasks", style: TextStyle(color: Colors.grey),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        child: Text("${courseItems[position].image}", style: TextStyle(fontSize: 28.0),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: LinearProgressIndicator(value: courseItems[position].percentage,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
        ),
      ),
      onHorizontalDragEnd: (details) {
        if(details.velocity.pixelsPerSecond.dx > 0) {
          if(cardIndex>0)
            cardIndex--;
        }else {
          if(cardIndex<2)
            cardIndex++;
        }
        setState(() {
          scrollController.animateTo((cardIndex)*256.0, duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
        });
      },
    );
  }




//This function is to handle menu rendering from Array
  generateMenuItems(List<MenuItem> menuItems)
  {
    List<Widget> list = new List<Widget>();
    for(var i = 0; i < menuItems.length; i++){
      list.add(buildButtonColumn(Image.asset(menuItems[i].image, height:60.0,width:60.0), menuItems[i].label));

    }

    return list;
  }


Column buildButtonColumn(assetImage,String label){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      assetImage,
      Container(
        margin: const EdgeInsets.only(top:8),
        child: new Text(
          label,
          style: TextStyle(
            fontSize:12,
            fontFamily:'Roboto'
          ),
        ),
      ),
    ],
  );
}

Column buildContentTitle(String titlelabel){
  return Column (
    children: <Widget>[
      new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              titlelabel,
              style: TextStyle(
                fontSize:20,
                fontFamily: 'Paytone one',
             ),
            ),
          ],
        ),
      )
    ],

  );
}

Column buildContenttext(String textlabel){
    return Column (
      children: <Widget>[
        new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                textlabel,
                style: TextStyle(
                  fontSize:12,
                  fontFamily: 'Roboto',
                  color:Colors.blueGrey[200],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MenuItem {
  String image;
  String label;
  MenuItem({this.image, this.label});
}

class CourseItem {
  String _title;

  String get title => _title;

  set title(String title) {
    _title = title;
  }
  String _image;

  String get image => _image;

  set image(String image) {
    _image = image;
  }
  String _status;

  String get status => _status;

  set status(String status) {
    _status = status;
  }
  String _startDate;

  String get startDate => _startDate;

  set startDate(String startDate) {
    _startDate = startDate;
  }
  String _endDate;

  String get endDate => _endDate;

  set endDate(String endDate) {
    _endDate = endDate;
  }
  String _dateline;

  String get dateline => _dateline;

  set dateline(String dateline) {
    _dateline = dateline;
  }
  double _percentage;

  double get percentage => _percentage;

  set percentage(double percentage) {
    _percentage = percentage;
  }
  String _percentageLabel;

  String get percentageLabel => _percentageLabel;

  set percentageLabel(String percentageLabel) {
    _percentageLabel = percentageLabel;
  }


}







