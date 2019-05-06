import 'package:flutter/material.dart';
import 'package:flutter_login_app/Constains.dart';

class DashboardPage extends StatelessWidget {
  static String tag = 'dashboard-page';



  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      body: new Stack(

        children: <Widget>[
          new Container(
            constraints: new BoxConstraints.expand(

            ),
            alignment: AlignmentDirectional.topStart,
            padding: new EdgeInsets.only(left: 18.0, top: 40.0),
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage('assets/dashboard_background.png'),fit:BoxFit.cover,),
            ),

            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only( right: 15.0),
                  width: 50.0,
                  height:50.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new  DecorationImage(image: new AssetImage('assets/profile_pic.png'),
                    ),
                  ),
                ),




              ],
            ),

          )
        ],
      ),

    );
  }


}





