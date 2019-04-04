import 'package:flutter/material.dart';
import 'package:flutter_login_app/Constains.dart';

class DashboardPage extends StatelessWidget {
  static String tag = 'dashboard-page';



  @override
  Widget build(BuildContext context) {

    return new Scaffold(
     appBar: new AppBar(
       actions: <Widget>[
         PopupMenuButton<String>(
           onSelected: choiceAction,
           itemBuilder: (BuildContext context){
             return Constants.choices.map((String choice){
               return PopupMenuItem<String>(
                 value: choice,
                 child: Text(choice),
               );

             }).toList();
           },
         )


       ],
     ),
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

                new Container(
                  child: new Column(
                    children: <Widget>[
//                       new Row(
//                         children: <Widget>[
//                           new Container(
//                             margin: const EdgeInsets.only(
//                               top: 5.0,bottom:10.0),
//                               child: new Text('Erin Kong',
//                                style: new TextStyle(
//                                  fontSize: 18.0,
//                                  color: Colors.white,
//                                  fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                           )
//                         ],
//                       )
                      new Container(
                        margin: const EdgeInsets.only(bottom: 5.0),
                        child: new Text('Erin Kong'),
                      ),

                      new Container(
                        margin: const EdgeInsets.only(bottom: 5.0),
                        child: new Text('Erin Kong'),
                      )

                    ],
                  ),
                ),

                new Container(




                )

              ],
            ),

          )
        ],
      ),

    );
  }

  void choiceAction(String choice){
    print('WORKING');
  }
}





