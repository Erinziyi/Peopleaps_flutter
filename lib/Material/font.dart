import 'package:flutter/material.dart';


//font

Column buildContentTextLabelBold(String textlabel){
  return Column (

    children: <Widget>[
      new Container(
        child: new Row(

          children: <Widget>[
            new Text(
              textlabel,
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              softWrap: false,
              maxLines: 2,
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


Column buildContentTextLabelRegular(String textlabel){
  return Column (
    children: <Widget>[
      new Container(
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              textlabel,
              style: TextStyle(
                fontSize:12,
                fontFamily: 'Roboto',
                color:Colors.black,
              ),
            ),
          ],
        ),
      )
    ],
  );
}
