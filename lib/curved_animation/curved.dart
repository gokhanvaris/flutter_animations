import 'package:flutter/material.dart';

class SineCurve extends Curve {
  final double count;

  const SineCurve({this.count = 3});

  // t = x
  @override
  double transformInternal(double t) {
    //var val = sin(count * 2 * pi * t) * 0.5 + 0.5;
    //return val ?? 0.0; //f(x)
    return 0;
  }
}
