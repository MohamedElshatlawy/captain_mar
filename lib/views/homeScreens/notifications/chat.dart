import 'package:captain_mar/utils/colors.dart';
import 'package:captain_mar/views/widgets/chat_list_item.dart';
import 'package:captain_mar/views/widgets/custom_rounded_btn.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  List<String> msgs = [
    'السلام عليكم',
    'وعليكم السلام',
    'اين انت الان و ما احوال الطرد'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ...msgs.map((e) => ChatListItem(
                      text: e,
                      isRight: msgs.indexOf(e) % 2 == 0,
                    ))
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 45,
                child: CustomRoundedButton(
                  backgroundColor: CustomColors.ORANGE_COLOR,
                  borderColor: CustomColors.ORANGE_COLOR,
                  text: 'ارسال الموقع الحالي',
                  pressed: () {},
                  textColor: Colors.white,
                ),
              )),
              SizedBox(
                width: 8,
              ),
              Expanded(
                  child: Container(
                height: 45,
                child: CustomRoundedButton(
                  backgroundColor: CustomColors.ORANGE_COLOR,
                  borderColor: CustomColors.ORANGE_COLOR,
                  text: 'الغاء الطلب',
                  pressed: () {},
                  textColor: Colors.white,
                ),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 45,
                child: CustomRoundedButton(
                  backgroundColor: CustomColors.WHIRE_COLOR,
                  borderColor: CustomColors.ORANGE_COLOR,
                  text: 'فتح تذكرة دعم',
                  pressed: () {},
                  textColor: CustomColors.ORANGE_COLOR,
                ),
              )),
              SizedBox(
                width: 8,
              ),
              Expanded(
                  child: Container(
                height: 45,
                child: CustomRoundedButton(
                  backgroundColor: CustomColors.WHIRE_COLOR,
                  borderColor: CustomColors.ORANGE_COLOR,
                  text: 'تغيير مندوب التوصيل',
                  pressed: () {},
                  textColor: CustomColors.ORANGE_COLOR,
                ),
              ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 45,
                child: CustomRoundedButton(
                    backgroundColor: CustomColors.PRIMARY_GREEN,
                    borderColor: CustomColors.PRIMARY_GREEN,
                    text: 'ارسال',
                    pressed: () {},
                    textColor: Colors.white),
              )),
              SizedBox(
                width: 8,
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: 46,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: 'اكتب رسالة'),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
