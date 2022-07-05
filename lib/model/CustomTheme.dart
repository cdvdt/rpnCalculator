import 'package:flutter/material.dart';

class CustomTheme{
  CustomTheme({ required this.theme });
  ThemeData theme;

  static CustomTheme darkTheme = CustomTheme(theme: ThemeData.dark());

  static CustomTheme lightTheme = CustomTheme(theme: ThemeData.light());
}