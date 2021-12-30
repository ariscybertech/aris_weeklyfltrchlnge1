import 'package:flutter/material.dart';

class VariantButton extends StatefulWidget {
  final String title;
  final Color color;
  final bool active;
  final int lampIndex;
  final Function callbackFunction;

  VariantButton(this.title, this.color, this.active, this.lampIndex,
      this.callbackFunction);

  @override
  _VariantButtonState createState() => _VariantButtonState();
}

class _VariantButtonState extends State<VariantButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.callbackFunction(widget.lampIndex),
      child: Container(
        width: 70,
        height: 70,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              height: 25,
              child: Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: widget.active ? 22 : 12,
                  height: widget.active ? 22 : 12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: widget.active ? Colors.white : widget.color,
                      width: widget.active ? 2 : 0,
                    ),
                    color: widget.color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              child: Text(widget.title),
              style: TextStyle(
                color: Colors.white,
                fontWeight: widget.active ? FontWeight.bold : FontWeight.normal,
                fontSize: widget.active ? 13 : 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
