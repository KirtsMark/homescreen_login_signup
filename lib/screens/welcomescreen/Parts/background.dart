import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            child: Image.asset(
              "assets/image/Top_Space_Clear.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Image.asset(
              "assets/image/Bottom.png",
              width: size.width,
              height: size.width * 0.5,
              alignment: Alignment.bottomCenter,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
