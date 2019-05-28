import 'package:flutter/material.dart';
import 'package:flutter_login_app/Course/course_list.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
      child:  _buildCardContent(),




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
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: new Container(
                      height: 200.0,
                       child: new Column(
                         children: <Widget>[
                           cardContentOne(context),
                           cardContentTwo(context),

                         ],
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
              buildContentTextLabel('Product Training Course'),
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
                  fontSize:14.0,
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
                    buildContentTextLabel('Start Date'),
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
                    buildContentTextLabel('End Date'),
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







Column buildContentTextLabel(String textlabel){
  return Column (
    children: <Widget>[
      new Container(
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              textlabel,
              style: TextStyle(
                fontSize:13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color:Colors.black,
              ),
            ),
          ],
        ),
      )
    ],
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








const List<Color> orangeGradients = [
  Color(0xFF5AEAF1),
  Color(0xFF4FC3F7),
  Color(0xFF84FFFF),
];

const List<Color> aquaGradients = [
  Color(0xFF5AEAF1),
  Color(0xFF8EF7DA),
];

class WavyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopWaveClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: orangeGradients,
              begin: Alignment.topLeft,
              end: Alignment.center),
        ),
        height: MediaQuery.of(context).size.height / 2.5,
      ),
    );
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This is where we decide what part of our image is going to be visible.
    var path = Path();
    path.lineTo(0.0, size.height);

    var firstControlPoint = new Offset(size.width / 7, size.height - 30);
    var firstEndPoint = new Offset(size.width / 6, size.height / 1.5);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 5, size.height / 4);
    var secondEndPoint = Offset(size.width / 1.5, size.height / 5);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint =
    Offset(size.width - (size.width / 9), size.height / 6);
    var thirdEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    ///move from bottom right to top
    path.lineTo(size.width, 0.0);

    ///finally close the path by reaching start point from top right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

