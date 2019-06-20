
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';


class PdfViewPage extends StatefulWidget {
  static String tag ='pdfview-page';
  final String path;

  const PdfViewPage({Key key, this.path}) : super(key: key);

  @override
  _PdfViewPageState createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  int _totalPages =0;
  int _currentPage =0;
  bool pdfReady =false;
  PDFViewController _pdfViewController;

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
      body: Stack(children: <Widget>[
        PDFView(
          filePath: widget.path,
          autoSpacing: true,
          enableSwipe: true,
          pageSnap: true,
          swipeHorizontal: true,
          nightMode: false,
          onError: (e) {
            print(e);
          },
          onRender: (_pages){   //1
            setState(() {
              _totalPages =_pages;
              pdfReady = true;
            });
          },
          onViewCreated: (PDFViewController vc) { //2
            _pdfViewController = vc;
          },
          onPageChanged: (int page, int total) {
           setState(() {

           });
          },

          onPageError: (page,e){

          },
        ),//PDFView

        !pdfReady ? Center(child: CircularProgressIndicator(),) : Offstage() //4


      ],),

      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _currentPage>0
              ? FloatingActionButton.extended(
            backgroundColor: Colors.red,
            label: Text("Go to ${_currentPage - 1}"),
            onPressed: () {
              _currentPage -= 1;
              _pdfViewController.setPage(_currentPage);
            },
          )
              : Offstage(),
          _currentPage+1 < _totalPages
              ? FloatingActionButton.extended(
            backgroundColor: Colors.green,
            label: Text("Go to ${_currentPage + 1}"),
            onPressed: () {
              _currentPage += 1;
              _pdfViewController.setPage(_currentPage);
            },
          )
              : Offstage(),


        ],

    ),

    );
  }
}



