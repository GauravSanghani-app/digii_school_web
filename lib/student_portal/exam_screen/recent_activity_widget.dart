import 'package:digi_school/utils/theam_manager.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/want_text.dart';

class RecentActivityWidget extends StatelessWidget {
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
          WantText(text: "Recent Activity", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ImageIcon(
                      const AssetImage('assets/icons/bell.png'),
                      color: colorCustomButton,
                      size: width * 0.0097,
                    ),
                    SizedBox(width: width * 0.006),
                    WantText(
                      text: 'Mathematics Unit Test',
                      fontSize: width * 0.011,
                      fontWeight: FontWeight.w600,
                      textColor: colorBlack,
                      fontFamily: 'Poppins',
                    ),

                    Spacer(),
                    WantText(
                      text: '2 days left',
                      fontSize: width * 0.0083,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkGreyText,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.010),
                WantText(
                  text: 'Chapter 5: Algebra',
                  fontSize: width * 0.011,
                  fontWeight: FontWeight.w400,
                  textColor: colorDarkGreyText,
                ),
                SizedBox(height: height * 0.010),
                Row(
                  children: [
                    ImageIcon(
                      const AssetImage('assets/icons/clock.png'),
                      color: colorDarkGreyText,
                      size: width * 0.0097,
                    ),
                    SizedBox(width: width * 0.006),
                    WantText(
                      text: '9:00 am',
                      fontSize: width * 0.0097,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkGreyText,
                    ),
                    SizedBox(width: width * 0.025),
                    Icon(
                      Icons.calendar_today,
                      color: colorDarkGreyText,
                      size: width * 0.0097,
                    ),
                    SizedBox(width: width * 0.006),
                    WantText(
                      text: '15 March, 2025',
                      fontSize: width * 0.0097,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkGreyText,
                    ),
                  ],
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }


}
