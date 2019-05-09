import 'package:flutter/material.dart';
import 'package:flutter_login_app/Constains.dart';
import 'package:path/path.dart';

class DashboardPage extends StatelessWidget {
  static String tag = 'dashboard-page';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
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


    );
  }

  /*This is header section to handle profile image, email, name and dropdown button*/
  Widget headerSection() {
   return new Container(
     margin: const EdgeInsets.only(top:50.0),
     child: new Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.start,
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
    return new Container(

      child:new Column(
        children: <Widget>[
          new Container(
          alignment: Alignment.topCenter,
            child: new Container(
              height: 300.0,
              width: MediaQuery.of(context).size.width * width_percent,
              child: new Card(
                color: Colors.white,
                elevation: 4.0,
              ),
            ),

          ),
        ],
      ),
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

      ],
    ),
  );
}


}







