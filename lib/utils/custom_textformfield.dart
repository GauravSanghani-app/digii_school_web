import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class CustomTextFormField extends StatelessWidget {
  final Widget? prefixIcon;
  final String? labelText;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final bool? sizeBox;
  final bool readOnly;
  final Color? titleColor;
  final double? titleFontSize;
  final FontWeight? titleFontWeight;
  final int maxLines;
  final Color? fillColor;
  final bool extraSpace;
  final bool showBorder;

  final Color color;

  const CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.labelText,
    this.showBorder = true,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.onChanged,
    this.sizeBox = true,
    this.readOnly = false,
    this.titleColor,
    this.titleFontSize,
    this.fillColor,
    this.extraSpace = true,
    this.titleFontWeight,
    this.maxLines = 1,
    this.color = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          WantText(
              text: labelText??"",
              fontSize: width * 0.011,
              fontWeight: FontWeight.w500,
              textColor: colorTextFieldTitleBlack),
        if (extraSpace) SizedBox(height: height*0.016),
        SizedBox(
          height:maxLines==1? height * 0.054:height * 0.035*maxLines,
          width: width,
          child: TextFormField(
            maxLines: maxLines,
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            readOnly: readOnly,
            // Dynamically set based on parent state
            style: GoogleFonts.roboto(
              color: colorBlack,
              fontWeight: FontWeight.w500,
            ),
            onChanged: onChanged,
            decoration: InputDecoration(

              filled: fillColor != null,
              fillColor: fillColor ?? Colors.transparent,

              prefixIcon: prefixIcon,

              hintText: hintText,
              hintStyle: GoogleFonts.roboto(
                color: colorHintText,
                fontSize: width * 0.0097,
                fontWeight: FontWeight.w600,
                height: 1.6,
              ),
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(
                borderSide: showBorder
                    ? const BorderSide(color: colorTanBackground)
                    : BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: showBorder
                    ? const BorderSide(color: colorTanBackground)
                    : BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: showBorder
                    ? const BorderSide(color: colorTanBackground)
                    : BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              // constraints: const BoxConstraints(maxHeight: 48),
            ),
          ),
        ),
      ],
    );
  }
}
