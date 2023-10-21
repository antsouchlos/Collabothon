import 'package:flutter/material.dart';

class FitnessAppTheme {
  FitnessAppTheme._();
  // This is your new base color
  static const Color baseColor = Color(0xFF78E482);

  static const Color nearlyWhite = Color(0xFFEAFEEB); // a very light version of the green
  static const Color white = Color(0xFFFFFFFF); // pure white, remains unchanged
  static const Color background = Color(0xFF78E482);

  // Darker and more saturated than baseColor
  static const Color nearlyDarkBlue = Colors.black;

  // These colors should be harmonious with the baseColor and adjusted accordingly
  static const Color nearlyBlue = Colors.black;
  static const Color nearlyBlack = Colors.black;// very dark desaturated green (could also be a true black or nearly black color)
  static const Color grey = Colors.black; // greyish version of the green
  static const Color dark_grey = Colors.black; // darker greyish version

  // Text colors that are meant to be darker, possibly could stay relatively similar to ensure readability
  static const Color darkText = Colors.black;
  static const Color darkerText = Colors.black;
  static const Color lightText = Colors.black;
  static const Color deactivatedText = Colors.black; // could remain grey as it's often a system color

  // Other UI elements
  static const Color dismissibleBackground = Colors.black;
  static const Color spacer = Color(0xFFF2F2F2); // this might remain very light as it's likely used for spaces in the UI

  static const String fontName = 'Roboto'; // The font doesn't change

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}
