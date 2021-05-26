import 'package:captain_mar/views/widgets/restaurants_list_item.dart';
import 'package:flutter/material.dart';

class Restaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: ListView(
              children: [...List.generate(20, (index) => RestautantlistItem())],
            ),
          ))
        ],
      ),
    );
  }
}
