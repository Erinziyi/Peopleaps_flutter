import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoViewPage extends StatefulWidget {
  static String tag = 'videoview-page';
  @override
  _VideoViewPageState createState() => _VideoViewPageState();
}

class _VideoViewPageState extends State<VideoViewPage> {
  VideoPlayerController _videoPlayerController1;   // step 1
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4');

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,

    );
  }    // step 2 initstate

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        iconTheme: IconThemeData (
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text ('PEOPLEAPS Video',
          style: TextStyle (
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),
      ),

      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _chewieController.dispose();
                      _videoPlayerController2.pause();
                      _videoPlayerController2.seekTo(Duration(seconds: 0));
                      _chewieController = ChewieController(
                        videoPlayerController: _videoPlayerController1,
                        aspectRatio: 3 / 2,
                        autoPlay: true,
                        looping: true,
                      );
                    });
                  },

                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _chewieController.dispose();
                      _videoPlayerController1.pause();
                      _videoPlayerController1.seekTo(Duration(seconds: 0));
                      _chewieController = ChewieController(
                        videoPlayerController: _videoPlayerController2,
                        aspectRatio: 3 / 2,
                        autoPlay: true,
                        looping: true,
                      );
                    });
                  },

                ),
              )
            ],
          ),

        ],
      ),//body

    );
  }
}

