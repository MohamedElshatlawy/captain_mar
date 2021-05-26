import 'package:captain_mar/views/widgets/notification_list_item.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  List<String> notificationsList = [
    'طلبك وصل',
    'طلبك خارج المطعم',
    'تم قبول طلبك وجاري تحضيره',
    'طلبك وصل',
    'طلبك خارج المطعم',
    'تم قبول طلبك وجاري تحضيره',
    'طلبك وصل',
    'طلبك خارج المطعم',
    'تم قبول طلبك وجاري تحضيره'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ListView(children: [
        ...notificationsList.map((e) => NotificationListItem(
              text: e,
              color: (notificationsList.indexOf(e) == 0
                  ? Colors.greenAccent[100]
                  : Colors.white),
            ))
      ]),
    );
  }
}
