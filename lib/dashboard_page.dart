import 'package:flutter/material.dart';

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(bottom:600.0,),
                  width: 50.0,
                  height:50.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new  DecorationImage(image: new AssetImage('assets/profile_pic.png'),
                    ),
                  ),
                ),
                
                new Expanded(
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Column (
                          children: <Widget>[
                            new Expanded(
                                child: new Container(
                                  margin: const EdgeInsets.only(top:40.0,left: 20.0),
                                  child: new Text('John Doe',
                                   style: new TextStyle(
                                     fontSize: 18.0, color: Colors.white,
                                     fontWeight: FontWeight.bold,
                                   ),
                                  ),
                                )
                            )
                          ],
                        )

                        new Column (
                          children: <Widget>[
                            new Expanded(
                                child: new Container(
                                  margin: const EdgeInsets.only(top:40.0,left: 20.0),
                                  child: new Text('John Doe',
                                    style: new TextStyle(
                                        fontSize: 18.0, color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                            )
                          ],
                        )


                      ],
                    )
                ),
                

              ],


            ),



            




          )



        ],
      ),

    );
  }
}



