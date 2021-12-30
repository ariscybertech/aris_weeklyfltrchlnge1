import 'package:flutter/material.dart';

class AddToCartTopButton extends StatelessWidget {
  final Color color;
  AddToCartTopButton({this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(40),
            ),
          ),
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.width / 5 * 1.3,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.only(
                bottomLeft: const Radius.circular(40),
              ),
              onTap: (){},
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.4,
                  child: FittedBox(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: <Widget>[
                        Icon(
                          Icons.add_shopping_cart,
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: this.color,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                        ),
                      ],
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
