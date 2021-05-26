import 'dart:async';

import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:response/response.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ActiveOrderDetails extends StatelessWidget {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(offset: Offset(1, 1), color: Colors.grey)
              ]),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'عدد المندوبين',
                      ),
                      Text(
                        'عدد الطرود',
                      ),
                      Text('وقت استلام الطرد'),
                      Text('عنوان المرسل'),
                      Text('سيارة مبرحة'),
                      Text('سيارة كبيرة'),
                      Text('وصف الطرد'),
                      Text('قيمة الطرد'),
                      Text('جهة دفع رسوم التوصيل'),
                      Text('طريقة دفع رسوم التوصيل'),
                      Text('اسم المستلم'),
                      Text('رقم هاتف المستلم'),
                      Text('عنوان المستلم'),
                      Text('وقت تسليم الطرد'),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: CustomRoundedButton(
                            backgroundColor: CustomColors.ORANGE_COLOR,
                            pressed: () {},
                            borderColor: CustomColors.ORANGE_COLOR,
                            text: 'تعديل الطلب',
                            textColor: Colors.white),
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3',
                      ),
                      Text(
                        '1',
                      ),
                      Text('30-3-2020 1:34 pm'),
                      Text('القاهرة - الجيزة '),
                      Text('يوجد'),
                      Text('لايوجد'),
                      Text('طرد ٤٠ في ٦٠'),
                      Text('٥٠٠ ريال'),
                      Text('المستلم'),
                      Text('عند الاستلام'),
                      Text('احمد فريد احمد'),
                      Text('01093138717'),
                      Text('القاهرة - المعادي'),
                      Text('30-3-2020 1:40'),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: CustomRoundedButton(
                            backgroundColor: Colors.grey,
                            borderColor: Colors.grey,
                            text: 'حذف الطلب',
                            pressed: () {},
                            textColor: Colors.black38),
                      )
                    ],
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text('العروض',
                    style: TextStyle(
                        fontSize: ResponseUI.instance.setFontSize(15))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(offset: Offset(1, 1), color: Colors.grey)
              ]),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    trailing: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {},
                            starCount: 5,
                            rating: 3,
                            size: 20.0,
                            isReadOnly: true,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0),
                        Text('3.0'),
                      ],
                    ),
                    title: Text('Ahmed'),
                    subtitle: Text('١٠٠ ريال توصيل'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    textDirection: TextDirection.ltr,
                    children: [
                      Expanded(
                        child: Container(
                          child: CustomRoundedButton(
                            backgroundColor: CustomColors.ORANGE_COLOR,
                            borderColor: CustomColors.ORANGE_COLOR,
                            pressed: () {},
                            text: 'مراسلة المندوب ',
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: CustomColors.ORANGE_COLOR,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.call),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: CustomColors.ORANGE_COLOR,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.favorite_border),
                      ),
                      SizedBox(
                        width: ResponseUI.instance.setWidth(100),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text('تتبع المندوب',
                    style: TextStyle(
                        fontSize: ResponseUI.instance.setFontSize(15))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              child: GoogleMap(
                mapType: MapType.normal,
                markers: Set.from([
                  Marker(markerId: MarkerId('1'), position: _kGooglePlex.target)
                ]),
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
