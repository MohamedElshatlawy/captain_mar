import 'package:captain_mar/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

class WorkingHours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text('ماكدونالدز'),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 40,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(offset: Offset(1, 1), color: Colors.grey)
            ]),
            child: Column(
              children: [
                ...List.generate(
                    6,
                    (index) => ListTile(
                          title: Text('السبت'),
                          subtitle: Text('12 م - ١ ص'),
                        )),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'تم',
                  style: TextStyle(
                      fontSize: ResponseUI.instance.setFontSize(16),
                      color: CustomColors.ORANGE_COLOR),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
