import 'package:flutter/material.dart';

double dimUnit = 1;

void prepareDim(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  dimUnit = width / 360;
}

double dim(num size) => size * dimUnit;
