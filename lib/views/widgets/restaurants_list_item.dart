import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/viewModel/screen_title_provider.dart';
import 'package:captain_mar/views/homeScreens/home_order/restaurant_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RestautantlistItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenTitleProvider = Provider.of<ScreenTitleProvider>(context);

    return ListTile(
      onTap: () async {
        String prevTitle = screenTitleProvider.title;
        screenTitleProvider.setTitle('ماكدونالدز');
        await Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => RestaurantDetails()));
        screenTitleProvider.setTitle(prevTitle);
      },
      contentPadding: EdgeInsets.all(0),
      leading: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 50,
      ),
      title: Text('ماكدونالدز'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.favorite,
            color: CustomColors.PRIMARY_GREEN,
          ),
          Text('10.5 كم')
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('مطاعم'),
          Row(
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
              SizedBox(
                width: 10,
              ),
              Text('4.0'),
            ],
          )
        ],
      ),
    );
  }
}
