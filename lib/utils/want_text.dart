import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WantText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final String fontFamily; // New parameter to specify the font family

  const WantText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.textColor,
    this.textAlign, // Optional parameter
    this.textOverflow, // Optional parameter
    this.fontFamily = "Roboto", // Default font family
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      style: _getFontFamilyStyle(),
    );
  }

  // Method to dynamically select the font family
  TextStyle _getFontFamilyStyle() {
    switch (fontFamily) {
      case "Roboto":
        return GoogleFonts.roboto(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );
      default:
        return GoogleFonts.poppins(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );
    }
  }
}
