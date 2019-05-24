class NotificationItem {
  final String message;
  final String time;

  const  NotificationItem ({this.message,this.time});
}

const notificationsDetail= <NotificationItem>[
  NotificationItem(
      message:'You have complete Product Training Lesson',
      time:'2 week ago',
  ),

  NotificationItem(
    message:'You have complete by 21/4/2019',
    time:'1 week ago',
  ),

  NotificationItem(
    message:'You have complete by 25/4/2019',
    time:'3 day ago',
  ),

];