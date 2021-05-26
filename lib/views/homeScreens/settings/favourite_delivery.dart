import 'package:captain_mar/views/widgets/favourite_delivery_list_item.dart';
import 'package:flutter/material.dart';

class FavouriteDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ListView(
        children: [...List.generate(6, (index) => FavouriteDeliveryListItem())],
      ),
    );
  }
}
