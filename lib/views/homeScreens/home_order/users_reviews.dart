import 'package:captain_mar/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class UsersReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ListView(
        children: [
          ...List.generate(
            4,
            (index) => Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: Text('ماكدونالدز'),
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 40,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        starCount: 4,
                        rating: 3,
                        size: 20.0,
                        isReadOnly: true,
                        color: CustomColors.ORANGE_COLOR,
                        borderColor: CustomColors.ORANGE_COLOR,
                        spacing: 0.0),
                    Text('4.0'),
                  ],
                ),
                children: [
                  ...List.generate(
                      7,
                      (index) => ListTile(
                            title: Text('ماكدونالدز'),
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 20,
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('٢٤ يوم'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'مطعم جيد جدا',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SmoothStarRating(
                                    allowHalfRating: false,
                                    onRated: (v) {},
                                    starCount: 4,
                                    rating: 3,
                                    size: 20.0,
                                    isReadOnly: true,
                                    color: CustomColors.ORANGE_COLOR,
                                    borderColor: CustomColors.ORANGE_COLOR,
                                    spacing: 0.0),
                                Text('4.0'),
                              ],
                            ),
                          ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
