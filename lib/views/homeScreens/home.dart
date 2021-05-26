import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/viewModel/screen_title_provider.dart';
import 'package:captain_mar/views/homeScreens/delivery/delivery_address.dart';
import 'package:captain_mar/views/homeScreens/home_order/index.dart';
import 'package:captain_mar/views/homeScreens/notifications/notifications.dart';
import 'package:captain_mar/views/homeScreens/orders/home_orders.dart';
import 'package:captain_mar/views/homeScreens/parcel/request_parcel.dart';
import 'package:captain_mar/views/homeScreens/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:response/response.dart';

class Home extends StatelessWidget {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    var screenTitleProvider = Provider.of<ScreenTitleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: (screenTitleProvider.title == "عنوان التسليم")
            ? Center(
                child: Text(
                'تم',
                style: TextStyle(
                    fontSize: ResponseUI.instance.setFontSize(15),
                    fontWeight: FontWeight.bold),
              ))
            : Container(),
        title: Text(screenTitleProvider.title),
        centerTitle: true,
      ),
      body: PersistentTabView(
        context,
        onItemSelected: (index) {
          screenTitleProvider.setTitleFromIndex(index);
        },
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style2, // Choose the nav bar style with this property.
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      Index(),
      Notifications(),
      RequestParcel(),
      HomeOrders(),
      Settings(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("الرئيسية"),
        activeColorPrimary: CustomColors.PRIMARY_GREEN,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.notifications),
        title: ("الإشعارات"),
        activeColorPrimary: CustomColors.PRIMARY_GREEN,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.delivery_dining),
        title: ("عنوان التسليم"),
        activeColorPrimary: CustomColors.PRIMARY_GREEN,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.menu),
        title: ("طلباتي"),
        activeColorPrimary: CustomColors.PRIMARY_GREEN,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.more_horiz),
        title: ("الاعدادات"),
        activeColorPrimary: CustomColors.PRIMARY_GREEN,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
