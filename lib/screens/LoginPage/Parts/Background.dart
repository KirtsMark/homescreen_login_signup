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
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0.0,
              right: 0.0,
              child: Image.asset("assets/image/Side_Top.png",
                  width: size.width * 0.32, alignment: Alignment.topCenter)),
          Positioned(
            bottom: 0.0,
            child: Image.asset("assets/image/Bottom.png",
                width: size.width,
                height: size.width * 0.3,
                alignment: Alignment.bottomCenter),
          ),
          child,
        ],
      ),
    );
  }
}
