import 'package:flutter/material.dart';

abstract class SizeConfig {
  static double? screenHeight;
  static double? screenWidth;
  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }
}
