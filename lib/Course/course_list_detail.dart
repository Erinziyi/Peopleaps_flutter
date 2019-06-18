import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:simple_animations/simple_animations.dart';


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
        backdropEnabled: true,
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
        color: Colors.blueAccent,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
      ),
      margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
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
          color: Colors.blueAccent,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),

          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.grey,
            ),
          ]
      ),
      margin: const EdgeInsets.fromLTRB(0.0,50.0, 0.0, 0.0),
      child: Center(

        child: _scrollingList(),
      ),
    );
  }

  Widget _scrollingList(){
    final titles = ['MS Exel Advanced',
      'People 4.0 - Self Materry',
      'SQL Server',
      'Customer Service Skill',
      'MS Exel Foundation',
      'MS Exel Intermediate',
      'Report Simplified',
      'Goals Essential - Power Comunication & Interpersonl Comuncation',
      'People 4.0 - Self Materry',
      'SQL Server',
      'Customer Service Skill',
      'MS Exel Foundation',
      'MS Exel Intermediate',
      'Report Simplified',
      'Goals Essential - Power Comunication & Interpersonl Comuncation',
      'People 4.0 - Self Materry',
      'SQL Server',
      'Customer Service Skill',
      'MS Exel Foundation',
      'MS Exel Intermediate',
      'Report Simplified',
      'Goals Essential - Power Comunication & Interpersonl Comuncation'];


    return Container(

      //adding a margin to the top leaves an area where the user can swipe
      //to open/close the sliding panel
      margin: const EdgeInsets.only(top: 50.0),
      color: Colors.white,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, index){
          return Card(
            elevation: 4.0,
            child: ListTile(

              title: Text(titles[index],style:new TextStyle(
                  color:Colors.black,
                  fontSize: 14.0),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),

            ),

          );
        },
      ),
    );
  }










}




class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeIn(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translateX").add(
          Duration(milliseconds: 500), Tween(begin: 130.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (300 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(animation["translateX"], 0), child: child),
      ),
    );
  }
}








 
   


 





