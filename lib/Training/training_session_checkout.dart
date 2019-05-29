import 'package:flutter/material.dart';
import 'package:flutter_login_app/Material/background_ui.dart';
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

        title: Text('Product Training ' ,
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
  return new Card(
    color: Colors.white,
    elevation: 4.0,

    child: Container(
      margin: const EdgeInsets.all(8.0),
      height:400.0,
      width: MediaQuery.of(context).size.width * (width_percent / 100),




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





