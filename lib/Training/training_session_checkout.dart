import 'package:flutter/material.dart';
import 'package:flutter_login_app/Material/background_ui.dart';
import 'package:flutter_login_app/Material/font.dart';
import 'package:flutter_login_app/Training/training_session.dart';


class TrainingSessionCheckoutPage extends StatelessWidget {
  static String tag = 'trainingsessioncheckout-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],
        title: Text('Product Training Lesson ' ,
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
            trainingSessionDetail(context,90),
          ],
        ),
      ),
    );
  }



}



Widget trainingSessionDetail(BuildContext context, int width_percent){
  return new Container(
    alignment: AlignmentDirectional.center,
    child: new Card(
      color: Colors.white,
      elevation: 4.0,
      child: new Container(
        padding:EdgeInsets.all(5.0),
        height:500.00,
        width: MediaQuery.of(context).size.width * (width_percent / 100),
        child: new Container(
          child: new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0,15.0, 0.0,0.0),
                child: new Column(
                  children: <Widget>[
                    new  Image.asset('assets/icon_trainer.png', height: 30.0,width:30.0 ),
                  ],
                ),
              ),

              Container(
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15.0,15.0, 15.0,0.0),
                      child: new Column(
                        children: <Widget>[
                          buildContentTextLabelBold('Trainer'),
                          buildContentTextLabelRegular('Inderjit'),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left:150.0),
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0,15.0, 0.0,0.0),
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
                    ),
                  ],
                ),

              ),
            ],

          ),




        ),



      ),







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



