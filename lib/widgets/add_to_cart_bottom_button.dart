import 'package:flutter/material.dart';

class AddToCartBottomButton extends StatelessWidget {
  final Color color;
  AddToCartBottomButton({this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Center(
            child: Container(
              child: Text(
                "\$12.89",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(40),
              ),
              color: color,
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(40),
                ),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
