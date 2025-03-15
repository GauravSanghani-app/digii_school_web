
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropdownField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final List<String> items;
  final Function(String?) onSelected;

  const CustomDropdownField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.leadingIcon,
    this.trailingIcon,
    required this.items,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WantText(text: labelText,
            fontSize: width * 0.011,
            fontWeight: FontWeight.w500,
            textColor: colorTextFieldTitleBlack),
        SizedBox(height: height * 0.016,),
        SizedBox(
          height: height * 0.054,

          child: DropdownMenu<String>(
            width: width*0.334,
            leadingIcon: leadingIcon,
            trailingIcon: trailingIcon,
            hintText: hintText,
            inputDecorationTheme: InputDecorationTheme(
              contentPadding: EdgeInsets.only(left: width * 0.041),
              hintStyle: GoogleFonts.roboto(
                color: colorHostelName,
                fontSize: width * 0.0118,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),

              filled: true,
              fillColor: colorGreyBackground,
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: colorGreyBackground),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: colorGreyBackground),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: colorGreyBackground),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              constraints: const BoxConstraints(maxHeight: 48),
            ),
            menuStyle: MenuStyle(
              backgroundColor: MaterialStatePropertyAll(colorWhite),
              alignment: AlignmentDirectional.bottomEnd,
            ),

            onSelected: onSelected,
            dropdownMenuEntries: items
                .map(
                  (String item) => DropdownMenuEntry(
                    value: item,
                    label: item,
                    labelWidget: Text(
                      item,
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
