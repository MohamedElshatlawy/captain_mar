import 'package:flutter/material.dart';
import 'package:response/response.dart';

class ServiceGridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: Container(),
        child: Stack(
          children: [
            Container(
              color: Colors.red,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: ResponseUI.instance.setWidth(5)),
                child: Text(
                  'مطاعم',
                  style: TextStyle(
                      fontSize: ResponseUI.instance.setFontSize(16),
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
