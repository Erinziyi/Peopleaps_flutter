import 'package:flutter/material.dart';
import 'package:flutter_login_app/Material/background_ui.dart';
import 'package:flutter_login_app/Material/font.dart';
import 'package:flutter_login_app/Training/training_session_checkout.dart';

import '../action_plan_detail.dart';


class ActionPlanPage extends StatelessWidget {
  static String tag = 'actionplan-page';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Action Plan' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),
      ),

      body:new Container(
        constraints: new BoxConstraints.expand(),
        child: new Stack(

          children: <Widget>[
            _getBackground(),
            _getGradient(),
            TrainingSessionCard(),



          ],


        ),

      ),

    );
  }
}

class TrainingSessionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: _buildCardContent(),




    );
  }
}

Container _buildCardContent(){
  return Container(
    child: new Column(
      children: <Widget>[
        new Expanded(
          child: new ListView.builder(
              itemCount:10,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context,index){
                return new Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0,5.0),

                  child: new Card(
                    color: Colors.white,
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: new InkWell(
                      onTap:(){
                        Navigator.of(context).pushNamed(ActionPlanDetailPage.tag);
                      },

                      child: new Container(
                        height: 300.0,
                        child: new Column(

                          children: <Widget>[

                          ],
                        ),
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


Container cardContentOne(BuildContext context,){
  return Container(
    child: new Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0,15.0, 15.0,0.0),
          child: new Column(
            children: <Widget>[
              buildContentTextLabelBold('Product Training Course'),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(0.0,15.0, 15.0,0.0),
          child: new Column(
            children: <Widget>[
              new Text('Completed',
                style:new TextStyle(
                  color: Colors.lightGreenAccent[700],
                  fontSize:12.0,
                  fontFamily:'Roboto',
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}











Container _getGradient() {
  return new Container(
    margin: new EdgeInsets.only(top:190.0),
    height:600.0,
    decoration: new BoxDecoration(
      gradient: new LinearGradient(
        colors: <Color>[
          new Color(0x00736AB7),
          new Color(0xFF42A5F5),
        ],
        stops: [0.0, 2.0],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.0,1.0),
      ),
    ),
  );
}

Container _getBackground(){
  return new Container(
    child: WavyHeader() ,
    constraints: new BoxConstraints.expand(height: 300.0),

  );
}








