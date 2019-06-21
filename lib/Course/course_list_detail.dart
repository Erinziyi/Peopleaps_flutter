import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/Course/pdf_view_module.dart';
import 'package:flutter_login_app/Course/quiz_module.dart';
import 'package:flutter_login_app/Course/video_youtube_module.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:simple_animations/simple_animations.dart';
import 'article_view_module.dart';
import 'package:path_provider/path_provider.dart';


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

        title: Text('PEOPLEAPS' ,
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
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF)
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
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
          gradient: new LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF)
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp
          ),
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
    return Container(
      //adding a margin to the top leaves an area where the user can swipe
      //to open/close the sliding panel
      margin: const EdgeInsets.only(top: 50.0),
      color: Colors.white,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int i){
          return Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0,5.0),
            child: Column(
              children: <Widget>[
                FadeIn(1,QuizCard ()),
                FadeIn(1.5,VideoCard ()),
                FadeIn(2,PdfViewCard()),
                FadeIn(2.5, ArticleViewCard ()),

              ],
            ),
          );
        },
      ),

    );
  }
}

// Article
class ArticleViewCard extends StatelessWidget {
  const  ArticleViewCard({Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
//    final moduletitles = ['Introduce PEOPLEAPS',
//      'Whats is PEOPLEAPS?',
//      'Quiz for PEOPLEAPS',
//      'Why PEOPLEAPS?'
//    ];

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        color: Colors.deepPurpleAccent[700],
        elevation: 4.0,
        child: InkWell(
          onTap:(){
            Navigator.of(context).pushNamed(ArticleViewPage.tag);
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    width:55,
                    height:55,
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.cyanAccent[400],

                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey[900],
                            offset: new Offset(3.0,5.0),
                            blurRadius:50,
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage('assets/module_list_article.png'),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: ListTile(
                          title: Text('Why PEOPLEAPS?',style:new TextStyle(
                              color:Colors.white,
                              fontSize: 14.0),),
                          trailing: Icon(Icons.keyboard_arrow_right,color:Colors.white),
                        ),
                        height:30,
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
}



// Pdf problem here
class PdfViewCard extends StatefulWidget {
  @override
  _PdfViewCardState createState() => _PdfViewCardState();
}

class _PdfViewCardState extends State<PdfViewCard> {


  @override
  Widget build(BuildContext context) {
    return Container(





    );
  }
}






// VideoYoutube

class VideoCard extends StatelessWidget {
  const  VideoCard({Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
//    final moduletitles = ['Introduce PEOPLEAPS',
//      'Whats is PEOPLEAPS?',
//      'Quiz for PEOPLEAPS',
//      'Why PEOPLEAPS?'
//    ];

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        color: Colors.deepPurpleAccent[700],
        elevation: 4.0,
        child: InkWell(
          onTap:(){
            Navigator.of(context).pushNamed( VideoYouTubeViewPage .tag);
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    width: 55,
                    height:55,
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.cyanAccent[400],

                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey[900],
                            offset: new Offset(3.0,5.0),
                            blurRadius:50,
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage('assets/module_list_video.png'),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: ListTile(
                          title: Text('Whats is PEOPLEAPS?',style:new TextStyle(
                              color:Colors.white,
                              fontSize: 14.0),),
                          trailing: Icon(Icons.keyboard_arrow_right,color:Colors.white),
                        ),
                        height:30,
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
}

// Quiz
class QuizCard extends StatelessWidget {
  const  QuizCard({Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
//    final moduletitles = ['Introduce PEOPLEAPS',
//      'Whats is PEOPLEAPS?',
//      'Quiz for PEOPLEAPS',
//      'Why PEOPLEAPS?'
//    ];

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        color: Colors.deepPurpleAccent[700],
        elevation: 4.0,
        child: InkWell(
          onTap:(){
            Navigator.of(context).pushNamed(QuizViewPage.tag);
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    width: 55,
                    height:55,
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.cyanAccent[400],

                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey[900],
                            offset: new Offset(3.0,5.0),
                            blurRadius:50,
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage('assets/module_list_quiz.png'),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: ListTile(
                          title: Text('Quiz for PEOPLEAPS',style:new TextStyle(
                              color:Colors.white,
                              fontSize: 14.0),),
                          trailing: Icon(Icons.keyboard_arrow_right, color:Colors.white),
                        ),
                        height:30,
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
}


class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeIn(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds:500), Tween(begin: 0.0, end: 1.0)),
      Track("translateX").add(
          Duration(milliseconds:500), Tween(begin: 130.0, end: 0.0),
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


