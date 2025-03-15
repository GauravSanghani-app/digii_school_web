import 'package:digi_school/utils/theam_manager.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/want_text.dart';

class AnnouncementsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width*0.24,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(width*0.008),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.023),
          WantText(text: "Announcements", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
          SizedBox(height: height * 0.023),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(width*0.011),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(246, 173, 43, 0.3), Colors.white],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              // borderRadius: BorderRadius.circular(8), // Rounded corners
              border: Border(
                left: BorderSide(color: Color.fromRGBO(246, 173, 43, 0.66), width: 4),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                WantText(
                    fontFamily: "Roboto",
                    text: "Friday",
                    fontSize: width * 0.0083,
                    fontWeight: FontWeight.w400,
                    textColor: colorBlack),
                SizedBox(height: height*0.02),
                WantText(
                    fontFamily: "Roboto",
                    text: "Schedule Change: Math Class\nTomorrow's math class will be held in third\nperiod  ",
                    fontSize: width * 0.008,
                    fontWeight: FontWeight.w400,
                    textColor: colorBlack),

              ],
            ),
          ),

          SizedBox(height: height * 0.023),

          Container(
            width: double.infinity,
            padding: EdgeInsets.all(width*0.011),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                WantText(
                    fontFamily: "Roboto",
                    text: "Monday",
                    fontSize: width * 0.0083,
                    fontWeight: FontWeight.w400,
                    textColor: colorBlack),
                SizedBox(height: height*0.02),
                WantText(
                    fontFamily: "Roboto",
                    text: "Science Project Submission\nSubmit your projects by Friday, 3 PM ",
                    fontSize: width * 0.008,
                    fontWeight: FontWeight.w400,
                    textColor: colorBlack),
                SizedBox(height: height*0.02),
                WantText(
                    textAlign: TextAlign.end,
                    fontFamily: "Roboto",
                    text: "9TH April 2024",
                    fontSize: width * 0.005,
                    fontWeight: FontWeight.w400,
                    textColor: colorBlack),
              ],
            ),
          ),




        ],
      ),
    );
  }


}
