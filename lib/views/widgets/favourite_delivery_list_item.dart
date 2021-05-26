import 'package:captain_mar/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FavouriteDeliveryListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.red,
        ),
        title: Text('ماكدونالدز'),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('مطاعم'),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {},
                    starCount: 1,
                    rating: 1,
                    size: 20.0,
                    isReadOnly: true,
                    color: Colors.yellow,
                    borderColor: Colors.yellow,
                    spacing: 0.0),
                Text('5'),
              ],
            )
          ],
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.favorite_border,
              color: CustomColors.PRIMARY_GREEN,
            ),
            Text('10.5 كم')
          ],
        ),
      ),
    );
  }
}
