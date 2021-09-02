import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [
        Theme.of(context).primaryColor,
        Theme.of(context).primaryColorDark,
      ],
    ));

    return Stack(children: [
      // Gradiente de fondo
      Container(decoration: boxDecoration),
      // Pink Box
      //_PinkBox()
    ]);
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -100,
      left: -30,
      child: Transform.rotate(
        angle: -pi / 5,
        child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(194, 195, 189, 1),
                Color.fromRGBO(170, 171, 166, 1),
              ])),
        ),
      ),
    );
  }
}
