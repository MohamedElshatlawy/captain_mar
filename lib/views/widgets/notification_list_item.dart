import 'package:captain_mar/views/homeScreens/notifications/notifications_details.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

class NotificationListItem extends StatelessWidget {
  String text;
  Color color;
  NotificationListItem({this.color, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponseUI.instance.setHeight(80),
      child: Card(
        color: color,
        child: ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => NotificationsDetails()));
          },
          title: Text(text),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('نص ساعة')],
          ),
        ),
      ),
    );
  }
}
