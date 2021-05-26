import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/viewModel/screen_title_provider.dart';
import 'package:captain_mar/views/homeScreens/home_order/users_reviews.dart';
import 'package:captain_mar/views/homeScreens/home_order/working_hours.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:response/response.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'complete_order.dart';

class RestaurantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenTitleProvider = Provider.of<ScreenTitleProvider>(context);

    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: ResponseUI.instance.setHeight(200),
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'يفدم وجبات البرجر اللذيذة مع مجموعة كبيرة ومتنوعة للاختيار من بينها بما فيها برجر اللحوم و برجر الدجاج',
              style: TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
            ),
            Divider(
              height: 8,
            ),
            ListTile(
              title: Text('تقيمات المستخدمين'),
              subtitle: Row(
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
              trailing: InkWell(
                onTap: () async {
                  String prevTitle = screenTitleProvider.title;
                  screenTitleProvider.setTitle('اراء المستخدمين');
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => UsersReviews()));
                  screenTitleProvider.setTitle(prevTitle);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'اراء المستخدمين (100)',
                      style: TextStyle(color: CustomColors.PRIMARY_GREEN),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: CustomColors.PRIMARY_GREEN,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 8,
            ),
            ListTile(
              title: Text('القاهرة الجيزة'),
              subtitle: Text('يبعد 10.5 كم'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'تغيير الغرع',
                    style: TextStyle(color: CustomColors.PRIMARY_GREEN),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                    size: 20,
                  )
                ],
              ),
            ),
            Divider(
              height: 8,
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('القاهرة الجيزة'),
              subtitle: Text('يبعد 10.5 كم'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'تغيير الغرع',
                    style: TextStyle(color: CustomColors.PRIMARY_GREEN),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                    size: 20,
                  )
                ],
              ),
            ),
            Divider(
              height: 8,
            ),
            ListTile(
              leading: Icon(Icons.timer),
              title: Text('مفتوح'),
              subtitle: Text('10 م - 12 م '),
              trailing: InkWell(
                onTap: () async {
                  String prevTitle = screenTitleProvider.title;
                  screenTitleProvider.setTitle('ساعات العمل');
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => WorkingHours()));
                  screenTitleProvider.setTitle(prevTitle);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'عرض الاوقات',
                      style: TextStyle(color: CustomColors.PRIMARY_GREEN),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: CustomColors.PRIMARY_GREEN,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  'عرض جديد',
                  style:
                      TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  'عرض جديد من ماكدونلدز اشتري ٢ من بيج',
                  style:
                      TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'كوبون خصم #1234',
                  style:
                      TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
                ),
                Text(
                  'نسخ',
                  style: TextStyle(
                      color: CustomColors.ORANGE_COLOR,
                      fontSize: ResponseUI.instance.setFontSize(14)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'صور المنيو',
                  style:
                      TextStyle(fontSize: ResponseUI.instance.setFontSize(14)),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...List.generate(
                      5,
                      (index) => ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              height: 150,
                              width: 100,
                              color: Colors.red,
                            ),
                          ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 48,
              margin: EdgeInsets.symmetric(
                  horizontal: ResponseUI.instance.setWidth(40)),
              child: CustomRoundedButton(
                backgroundColor: CustomColors.ORANGE_COLOR,
                pressed: () async {
                  String prevTitle = screenTitleProvider.title;
                  screenTitleProvider.setTitle('اكمل الطلب');
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => CompleteOrder()));
                  screenTitleProvider.setTitle(prevTitle);
                },
                borderColor: CustomColors.ORANGE_COLOR,
                text: 'اكمل الطلب',
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
