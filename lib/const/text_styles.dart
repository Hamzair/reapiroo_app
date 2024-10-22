import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle jost700(
  double fontSize,
  Color color,
) {
  return GoogleFonts.jost(
    fontSize: fontSize,
    fontWeight: FontWeight.w700,
    color: color,
  );
}

TextStyle jost600(
  double fontSize,
  Color color,
) {
  return GoogleFonts.jost(
    fontSize: fontSize,
    fontWeight: FontWeight.w600,
    color: color,
  );
}

TextStyle jost(Color color, double fontSize, FontWeight fontWeight) {
  return GoogleFonts.jost(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle jost500(double fontSize, Color color) {
  return GoogleFonts.jost(
    fontSize: fontSize,
    fontWeight: FontWeight.w500,
    color: color,
  );
}

TextStyle jost400(
  double fontSize,
  Color color,
) {
  return GoogleFonts.jost(
    fontSize: fontSize,
    fontWeight: FontWeight.w400,
    color: color,
  );
}
