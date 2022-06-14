import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class ColorFulButton extends StatefulWidget {
  Color mainColor, secondColor;
  IconData iconData;
  @override
  State<ColorFulButton> createState() =>
      _ColorFulButtonState(mainColor, secondColor, iconData);

  ColorFulButton(this.mainColor, this.secondColor, this.iconData);
}

class _ColorFulButtonState extends State<ColorFulButton> {
  Color mainColor, secondColor;
  IconData iconData;
  bool isPreessed = false;
  _ColorFulButtonState(this.mainColor, this.secondColor, this.iconData);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPreessed = !isPreessed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPreessed = !isPreessed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPreessed = !isPreessed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPreessed) ? 3 : 10,
          shadowColor: (isPreessed) ? secondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color: (isPreessed) ? secondColor : mainColor,
                      child: Transform.rotate(
                        angle: -pi / 4,
                        child: Icon(
                          iconData,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Transform.translate(
                  offset: Offset(35, 35),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Transform.translate(
                  offset: Offset(35, -35),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-35, 35),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-35, -35),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.5)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
