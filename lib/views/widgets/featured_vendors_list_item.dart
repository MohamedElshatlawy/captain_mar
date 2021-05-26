import 'package:captain_mar/views/widgets/address_dialog.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

class FeaturedVendorListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponseUI.instance.setWidth(180),
      padding:
          EdgeInsets.symmetric(horizontal: ResponseUI.instance.setWidth(8)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              showDialog(context: context, builder: (ctx) => AddressDialg());
            },
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            title: Text('صيدلية العربي'),
            subtitle: Text('صيدليات'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('4.0'), Text('10.5 كم')],
          )
        ],
      ),
    );
  }
}
