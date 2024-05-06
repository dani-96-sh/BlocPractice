import 'package:flutter/material.dart';

abstract class HomeState {}

class Colorinit extends HomeState {
  final Color color;

  Colorinit(this.color);
}

class ColorRepaint extends HomeState {
  final Color color;

  ColorRepaint(this.color);
}
