import 'package:flutter/material.dart';

import 'package:flutter_login_app/Notificaition/notification_data.dart';


class  NotificationPage extends StatelessWidget {
  static String tag = 'notification-page';


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Notification' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
          
        ),
      ),
      body: NotificatificationBodyLayout(),

    );
  }

}

class NotificatificationBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _notificationListView(context);


  }
}

Widget _notificationListView(BuildContext context) {
  return ListView.separated(
    itemCount:30,
    itemBuilder: (context, index) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              notificationContent(),

            ],
          ),
        )
      );
    },
    separatorBuilder: (context, index) {
      return Divider();
    },
  );
}

Widget notificationContent() {
  return new Container(
    child: new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(6.0, 0.0, 0.0,10.0),
          child: new CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: new AssetImage('assets/peopleaps_notification_icon.png'),
            radius:24.0,
          ),
        ),
        Container(
          padding: new EdgeInsets.only(left:10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Text('Message',
                style:new TextStyle(
                  color:Colors.grey[400],
                  fontSize: 12.0,
                ),
              ),
              new Text('You have completed Self Mastery',
                style:new TextStyle(
                  color:Colors.black,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: new EdgeInsets.only(left:30.0),
          child: new Column(
            children: <Widget>[
              new Text('2 days ago',
                style:new TextStyle(
                  color:Colors.grey[400],
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}






