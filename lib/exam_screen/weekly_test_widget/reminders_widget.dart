import 'package:digi_school/utils/theam_manager.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/want_text.dart';

class RemindersWidget extends StatelessWidget {
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
          WantText(
              fontFamily: "Roboto",
              text: "Important Reminders",
              fontSize: width * 0.011,
              fontWeight: FontWeight.w600,
              textColor: colorBlack),
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

                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Image.asset(
                      "assets/icons/errorreminder.png",
                      width: width * 0.011,
                      height: width * 0.011,
                    ),

                    SizedBox(width: width * 0.01),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        WantText(
                            fontFamily: "Roboto",
                            text: "Please ensure your child:",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorDarkGreyText),
                        SizedBox(height: height * 0.008),
                        Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WantText(
                                fontFamily: "Roboto",
                                text: "Brings all required materials",
                                fontSize: width * 0.0083,
                                fontWeight: FontWeight.w400,
                                textColor: colorDarkGreyText),

                            SizedBox(height: height * 0.004),

                                WantText(
                                    fontFamily: "Roboto",
                                    text: "Arrives 10 minutes before the test",
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorDarkGreyText),
                            SizedBox(height: height * 0.004),



                                WantText(
                                    fontFamily: "Roboto",
                                    text: "Has reviewed the syllabus",
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorDarkGreyText),

                          ],
                        ),


                      ],
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
