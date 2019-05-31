import 'package:flutter/material.dart';
import 'package:flutter_login_app/Material/background_ui.dart';
import 'package:flutter_login_app/Material/font.dart';
import 'package:flutter_login_app/Training/training_session_checkout.dart';


class TrainingSessionPage extends StatelessWidget {
  static String tag = 'trainingsession-page';

  ///
  /// * I would suggest heading on to
  /// * https://material.io/guidelines/style/color.html#color-color-palette
  /// * to choose your colors
  ///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Training' ,
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
                        Navigator.of(context).pushNamed(TrainingSessionCheckoutPage.tag);
                        },

                      child: new Container(
                        height: 200.0,

                        child: new Column(

                          children: <Widget>[
                            cardContentOne(context),
                            cardContentTwo(context),
                            cardContentThree(context),
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


Container cardContentTwo(BuildContext context,){
  return Container(
    child: new Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right:40.0),
          child: new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,30.0, 5.0,0.0),
                child: new Image.asset('assets/icon_date.png', height: 30.0,width: 30.0,),
              ),
              Container(

                padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0,0.0),
                child: new Column(
                  children: <Widget>[
                    buildContentTextLabelBold('Start Date'),
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

        Container(
          margin: const EdgeInsets.only(left:40.0),
          child: new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,30.0, 5.0,0.0),
                child: new Image.asset('assets/icon_date.png', height: 30.0,width: 30.0,),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0,0.0),
                child: new Column(

                  children: <Widget>[
                    buildContentTextLabelBold('End Date'),
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

      ],
    ),

  );
}

Container cardContentThree(BuildContext context,){
  return Container(
    child: new Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right:10.0),
          child: new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,30.0, 5.0,0.0),
                child: new Image.asset('assets/icon_location.png', height: 30.0,width: 30.0,),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0.0, 30.0, 5.0,0.0),
                child: new Column(

                  children: <Widget>[
                    buildContentTextLabelBold('Location'),
                    new Text('Peoplelogy ',
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      style:new TextStyle(

                        color:Colors.black,
                        fontSize: 12.0,
                      ),
                    ),

                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left:160.0),
                child: new Row(

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,30.0, 0.0,0.0),
                      child: new Image.asset('assets/icon_barcode_scanner.png', height: 40.0,width: 40.0,),
                    ),


                  ],
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








