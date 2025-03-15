import 'package:digi_school/utils/theam_manager.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/want_text.dart';

class ReminderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width*0.24,
      padding: EdgeInsets.only(top: height*0.023),
      decoration: BoxDecoration(
        color: colorWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WantText(text: "Reminder", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
          SizedBox(height: height * 0.023),
          Container(
            width: width,
            padding: EdgeInsets.all(width*0.008),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(77, 193, 82, 0.33), Colors.white],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              // borderRadius: BorderRadius.circular(8), // Rounded corners
              border: Border(
                left: BorderSide(color: Color.fromRGBO(77, 193, 82, 0.66), width: 4),
              ),
            ),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width:width*0.18,
                  child: WantText(
                      fontFamily: "Roboto",
                      text: 'Submit mid-term exam papers by Friday, February 15, 2025. ',
                      fontSize: width * 0.011,
                      fontWeight: FontWeight.w600,
                      textOverflow: TextOverflow.visible,
                      textColor: colorBlack),
                ),

              ],
            ),
          ),
          SizedBox(height: height * 0.02),




        ],
      ),
    );
  }


}
