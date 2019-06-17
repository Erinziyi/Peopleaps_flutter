import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';


class CourseListDetailPage extends StatelessWidget {


  static String tag ='courselistdetail-page';
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Goals Essential - Self Mastery & Personal Effectiveness',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),
      ),
      body: SlidingUpPanel(
        color: Colors.blueGrey,

        renderPanelSheet: false,

          panel:_floatingPanel(),
        collapsed: _floatingCollapsed(),

        body:Center(
          child: Text("This is the Widget behind the sliding panel"),
        ),
      ),

    );
  }

  Widget _floatingCollapsed(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
      ),
      margin: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
      child: Center(
        child: Text(
          "Module",
          style: TextStyle(color: Colors.white,fontSize: 18.0,),
        ),
      ),
    );
  }

  Widget _floatingPanel(){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.grey,
            ),
          ]
      ),
      margin: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
      child: Center(
        child: _scrollingList(),
      ),
    );
  }

  Widget _scrollingList(){
    return Container(
      //adding a margin to the top leaves an area where the user can swipe
      //to open/close the sliding panel
      margin: const EdgeInsets.only(top: 36.0),

      color: Colors.white,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int i){
          return Container(
            padding: const EdgeInsets.all(12.0),
            child: Text("$i"),
          );
        },
      ),
    );
  }






}








 
   


 





