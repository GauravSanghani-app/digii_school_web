import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,

        required this.Width,
        required this.onTap,
        this.isSelected = false,
        this.buttonClick = false,
        this.isBoarderRadiusLess = false,
        this.labelWidget,
        this.paddingVertical,
        this.fontSize,
        this.borderColor,
        this.backgroundColor,

        this.label,
      })
      : super(key: key);

  final double Width;
  final Function()? onTap;
  final String? label;
  final bool isSelected;
  final bool buttonClick;
  final bool isBoarderRadiusLess;
  final Widget? labelWidget;
  final double? paddingVertical;
  final double? fontSize;
  final Color? borderColor;
  final Color? backgroundColor;



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Width,
        padding: EdgeInsets.symmetric(vertical: paddingVertical ?? height * 0.011),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ??
                (isSelected ? Colors.grey.withOpacity(0.4) : colorMainTheme),
          ),
          color: backgroundColor ??
              (isSelected
                  ? Colors.grey.withOpacity(0.4)
                  : buttonClick
                  ? colorWhite
                  : colorMainTheme),
          borderRadius: BorderRadius.circular(
              isBoarderRadiusLess ? width * 0.0083 : width * 0.0083),
        ),
        child: Center(
          child: labelWidget ??
              WantText(
                text: label ?? "",
                fontSize: fontSize ?? Width * 0.011,
                fontWeight: FontWeight.w500,
                textColor: colorCustomButtonLabelWhite,
              ),
        ),
      ),
    );
  }
}
