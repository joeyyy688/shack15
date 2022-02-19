// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shack15/constants/colorsConstants.dart';
import 'package:shack15/constants/textElementConstants.dart';

ThemeData lighThemeData(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: blackColor,
    scaffoldBackgroundColor: whiteColor,
    backgroundColor: whiteColor,
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.light,
    ).copyWith(secondary: whiteColor),
    textTheme: Theme.of(context)
        .textTheme
        .apply(
          bodyColor: blackColor,
          displayColor: whiteColor,
        )
        .copyWith(
          headline4: GoogleFonts.poppins(
            fontSize: textSizeLargeMedium,
            color: blackColor,
            fontWeight: fontWeightBold600,
          ),
          subtitle1: GoogleFonts.poppins(
            fontSize: textSize10,
            color: blackColor,
            fontWeight: fontWeightBold600,
          ),
          bodyText1: GoogleFonts.poppins(
            fontSize: textSizeSmall,
            color: black54Color,
            fontWeight: fontWeightNormal,
          ),
          subtitle2: GoogleFonts.poppins(
            fontSize: textSize11,
            color: black54Color,
            fontWeight: fontWeightNormal,
          ),
          bodyText2: GoogleFonts.poppins(
            color: whiteColor,
            fontSize: textSizeMedium,
            fontWeight: fontWeightBold500,
          ),
          button: GoogleFonts.poppins(
            color: blackColor,
            fontSize: textSize10,
            fontWeight: fontWeightBold500,
          ),
        ),
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
