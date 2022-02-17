// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shack15/constants/colorsConstants.dart';

ThemeData lighThemeData() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: blackColor,
    scaffoldBackgroundColor: whiteColor,
    backgroundColor: whiteColor,
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.light,
    ).copyWith(secondary: whiteColor),
  );
}

ThemeData darkThemeData() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: whiteColor,
    scaffoldBackgroundColor: blackColor,
    backgroundColor: blackColor,
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.dark,
    ).copyWith(secondary: blackColor),
  );
}
