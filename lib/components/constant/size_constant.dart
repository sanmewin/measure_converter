import 'package:flutter/material.dart';

extension MediaQueryDataProportionate on MediaQueryData {
  static const double layoutHeight = 812.0;
  static const double layoutWidth = 315.0;
  double getProportionateScreenHeight(double inputHeight) =>
      (inputHeight / layoutHeight) * size.height;
  double getProportionateScreenWidth(double inputWidth) =>
      (inputWidth / layoutWidth) * size.width;
}