import 'package:flutter/material.dart';

class SpecificationTile extends StatelessWidget {
  final Widget icon;
  final String title;
  SpecificationTile(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: const Color(0xFFF3F3F3),
          borderRadius: const BorderRadius.all(
            const Radius.circular(17),
          ),
        ),
        height: 70,
        width: 70,
        child: Column(
          children: <Widget>[
            icon,
            SizedBox(
              height: 6,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
