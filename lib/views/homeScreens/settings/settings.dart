import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/utils/custom_functions.dart';
import 'package:captain_mar/views/homeScreens/settings/favourite_delivery.dart';
import 'package:captain_mar/views/widgets/custom_textfield.dart';
import 'package:captain_mar/views/widgets/parcel_textfield.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: SingleChildScrollView(
        child: Card(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Column(
              children: [
                ParcelTextField(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                  ),
                  label: 'المتاجر',
                ),
                ParcelTextField(
                  icon: InkWell(
                    onTap: () {
                      CustomFunctions.navigateScreen(
                          context: context,
                          nextScreen: FavouriteDelivery(),
                          nextScreenTitle: 'مندوبين مفضلين');
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: CustomColors.PRIMARY_GREEN,
                    ),
                  ),
                  label: 'مندوبين مفضلين',
                ),
                ParcelTextField(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                  ),
                  label: 'قائمة المتاجر المفضلة',
                ),
                ParcelTextField(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                  ),
                  label: 'عناويني',
                ),
                ParcelTextField(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                  ),
                  label: 'الملف الشخصي',
                ),
                ParcelTextField(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                  ),
                  label: 'شروط الاستخدام',
                ),
                ParcelTextField(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                  ),
                  label: 'اللغة',
                ),
                ParcelTextField(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                  ),
                  label: 'سياسة الخصوصية',
                ),
                ParcelTextField(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                  ),
                  label: 'المساعدة',
                ),
                ParcelTextField(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: CustomColors.PRIMARY_GREEN,
                  ),
                  label: 'تسجيل الخروج',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('الاشعارات'),
                    SizedBox(
                      width: 8,
                    ),
                    Checkbox(value: true, onChanged: (v) {})
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/linkedin.png',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset('assets/twitter.png'),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset('assets/instagram.png'),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset('assets/facebook.png'),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
