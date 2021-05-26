import 'package:captain_mar/viewModel/screen_title_provider.dart';
import 'package:captain_mar/views/homeScreens/home_order/restaurants.dart';
import 'package:captain_mar/views/widgets/featured_vendors_list_item.dart';
import 'package:captain_mar/views/widgets/service_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:response/response.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenTitleProvider = Provider.of<ScreenTitleProvider>(context);
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                  ),
                  hintText: 'بحث في مطعم او مكان',
                  hintStyle: TextStyle(color: Colors.grey[400])),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'متاجر مميزة',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ResponseUI.instance.setFontSize(15)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: ResponseUI.instance.setHeight(100),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...List.generate(
                          3,
                          (index) => Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: ResponseUI.instance.setWidth(8)),
                              child: FeaturedVendorListItem()))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'الخدمات',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ResponseUI.instance.setFontSize(15)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  children: [
                    ...List.generate(
                        6,
                        (index) => InkWell(
                            onTap: () async {
                              String prevTitle = screenTitleProvider.title;

                              screenTitleProvider.setTitle("المطاعم");
                              await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Restaurants()));

                              screenTitleProvider.setTitle(prevTitle);
                            },
                            child: ServiceGridItem()))
                  ],
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
