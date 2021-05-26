import 'package:captain_mar/utils/colors.dart';
import 'package:flutter/material.dart';

import 'custom_rounded_btn.dart';

class AddressDialg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          ),
          Text('عنوان'),
          SizedBox(
            height: 10,
          ),
          CustomRoundedButton(
            backgroundColor: CustomColors.ORANGE_COLOR,
            borderColor: CustomColors.ORANGE_COLOR,
            pressed: () {},
            text: 'اختر عنوانك الحالي',
            textColor: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          CustomRoundedButton(
            backgroundColor: CustomColors.WHIRE_COLOR,
            borderColor: CustomColors.ORANGE_COLOR,
            pressed: () {},
            icon: Icon(Icons.map),
            text: 'اختر عنوان مخصوص   ',
            textColor: CustomColors.ORANGE_COLOR,
          )
        ],
      ),
    );
  }
}
