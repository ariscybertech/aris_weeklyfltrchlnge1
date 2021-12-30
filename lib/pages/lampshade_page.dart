import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/add_to_cart_top_button.dart';
import '../widgets/add_to_cart_bottom_button.dart';
import '../widgets/variant_button.dart';
import '../widgets/specification_tile.dart';

class LampshadePage extends StatefulWidget {
  @override
  _LampshadePageState createState() => _LampshadePageState();
}

class _LampshadePageState extends State<LampshadePage> {
  final List<Color> _colors = [
    const Color(0xFFFEC600),
    const Color(0xFFFF9D0B),
  ];
  final List<Image> _images = [
    Image.asset('assets/images/lamp_yellow.jpg'),
    Image.asset('assets/images/lamp_orange.jpg'),
  ];

  int _lampIndex = 1;

  void _changeLampIndex(int colorId) {
    setState(() {
      _lampIndex = colorId;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    color: _colors[_lampIndex],
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(50),
                    ),
                  ),
                  height: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Center(
                            child: _images[_lampIndex],
                          ),
                        ),
                        flex: 25,
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              VariantButton(
                                "Yellow",
                                _colors[0],
                                _lampIndex == 0,
                                0,
                                _changeLampIndex,
                              ),
                              VariantButton(
                                "Orange",
                                _colors[1],
                                _lampIndex == 1,
                                1,
                                _changeLampIndex,
                              ),
                            ],
                          ),
                        ),
                        flex: 10,
                      ),
                    ],
                  )),
              Container(
                padding: EdgeInsets.only(top: 40, left: 25, right: 25),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Melodi ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: "lamp"),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: _colors[_lampIndex],
                              borderRadius: BorderRadius.all(
                                const Radius.circular(25),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: _colors[_lampIndex],
                                    offset: Offset(0, 3.0),
                                    spreadRadius: -2,
                                    blurRadius: 10)
                              ],
                            ),
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'The lampshade provides directional lighting above the dining table and pleasant diffused light throughout the room',
                        style: TextStyle(fontSize: 18, height: 1.15),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SpecificationTile(
                          Icon(Icons.lightbulb_outline, size: 30),
                          "22 W",
                        ),
                        SpecificationTile(
                          Transform.rotate(
                            angle: -pi / 2,
                            child: Icon(Icons.straighten, size: 30),
                          ),
                          "28 cm",
                        ),
                        SpecificationTile(
                          Icon(Icons.straighten, size: 30),
                          "26 cm",
                        ),
                        SpecificationTile(
                          Transform.rotate(
                            angle: -pi / 2,
                            child: Icon(Icons.swap_calls, size: 30),
                          ),
                          "1.6 m",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 25),
              onPressed: () {},
            ),
          ),
          AddToCartTopButton(color: _colors[_lampIndex]),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              AddToCartBottomButton(color: _colors[_lampIndex]),
            ],
          ),
        ],
      ),
    );
  }
}
