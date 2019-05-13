import 'package:flutter/material.dart';
import 'package:flutter_login_app/Constains.dart';
import 'package:path/path.dart';

import 'Constants/fonts.dart';

class DashboardPage extends StatelessWidget {
  static String tag = 'dashboard-page';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
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
            dashboardContentLayout(context),

          ],
        ),
      ),
    );
  }

  /*This is header section to handle profile image, email, name and dropdown button*/
  Widget headerSection() {
   return new Container(
     margin: const EdgeInsets.only(top:50.0),
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
      margin: const EdgeInsets.only(top:20.0),
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

Widget actionPlanSection (BuildContext context){
  return Container(
    child: new Row(
      children: <Widget>[

      ],


    ),







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
                fontSize:24,
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
                ),
              ),
            ],
          ),
        )
      ],
    );
  }






//Parent layout to adjust all content's height. Mainly for scrollview control
Widget dashboardContentLayout(BuildContext context){
  return new Container(

    child: ListView(
      shrinkWrap: true,
      padding: EdgeInsets.only(left:10.0, right: 10.0),
      children: <Widget>[
        headerSection(),
        menuSection(context, 95),
        actionPlanSection(context),


      ],
    ),
  );
}
}

class MenuItem {
  String image;
  String label;
  MenuItem({this.image, this.label});
}







