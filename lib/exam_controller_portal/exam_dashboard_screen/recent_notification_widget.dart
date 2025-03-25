import 'package:digi_school/utils/theam_manager.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/want_text.dart';

class RecentNotificationWidget extends StatelessWidget {
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
          WantText(text: "Recent Notification", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
          SizedBox(height: height * 0.023),
          Container(
            width: width,
            padding: EdgeInsets.all(width*0.008),
            decoration: BoxDecoration(
              color: colorBlueCon,
              borderRadius: BorderRadius.circular(width*0.008),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(width*0.007),
                  decoration: BoxDecoration(
                    color: colorBoxBackground,
                    borderRadius: BorderRadius.circular(width*0.04),
                  ),
                  child:Image.asset('assets/icons/buttonup.png',width: width*0.0125,),

                ),
                SizedBox(width: width * 0.010),

                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    WantText(
                        text: 'Results Uploaded',
                        fontSize: width * 0.011,
                        fontWeight: FontWeight.w500,
                        textOverflow: TextOverflow.visible,
                        textColor: colorBlack),
                    SizedBox(height: height * 0.003),

                    WantText(
                        text: 'Chemistry Mid-term results uploaded',
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textOverflow: TextOverflow.visible,
                        textColor: colorDarkGreyText),
                    SizedBox(height: height * 0.003),

                    WantText(
                        text: '2 hours ago',
                        fontSize: width * 0.0083,
                        fontWeight: FontWeight.w400,
                        textOverflow: TextOverflow.visible,
                        textColor: colorGreysText),

                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.023),
          Container(
            width: width,
            padding: EdgeInsets.all(width*0.008),
            decoration: BoxDecoration(
              color: colorYellowCon,
              borderRadius: BorderRadius.circular(width*0.008),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(width*0.007),
                    decoration: BoxDecoration(
                      color: colorBoxBackground,
                      borderRadius: BorderRadius.circular(width*0.04),
                    ),
                    child:Icon(Icons.check,color: colorGreenCalendar,size: width*0.0138,)

                ),
                SizedBox(width: width * 0.010),

                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    WantText(
                        text: 'Exam Completed',
                        fontSize: width * 0.011,
                        fontWeight: FontWeight.w500,
                        textOverflow: TextOverflow.visible,
                        textColor: colorBlack),
                    SizedBox(height: height * 0.003),

                    WantText(
                        text: 'Biology Final Exam finished',
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textOverflow: TextOverflow.visible,
                        textColor: colorDarkGreyText),
                    SizedBox(height: height * 0.003),

                    WantText(
                        text: '5 hours ago',
                        fontSize: width * 0.0083,
                        fontWeight: FontWeight.w400,
                        textOverflow: TextOverflow.visible,
                        textColor: colorGreysText),

                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.023),
          Container(
            width: width,
            padding: EdgeInsets.all(width*0.008),
            decoration: BoxDecoration(
              color: colorPinkCon,
              borderRadius: BorderRadius.circular(width*0.008),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(width*0.007),
                    decoration: BoxDecoration(
                      color: colorBoxBackground,
                      borderRadius: BorderRadius.circular(width*0.04),
                    ),
                    child:Icon(Icons.add,color: colorPurple,size: width*0.0138,)

                ),
                SizedBox(width: width * 0.010),

                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    WantText(
                        text: 'New Exam Created',
                        fontSize: width * 0.011,
                        fontWeight: FontWeight.w500,
                        textOverflow: TextOverflow.visible,
                        textColor: colorBlack),
                    SizedBox(height: height * 0.003),

                    WantText(
                        text: 'Mathematics Final Exam scheduled',
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textOverflow: TextOverflow.visible,
                        textColor: colorDarkGreyText),
                    SizedBox(height: height * 0.003),

                    WantText(
                        text: '1 day ago',
                        fontSize: width * 0.0083,
                        fontWeight: FontWeight.w400,
                        textOverflow: TextOverflow.visible,
                        textColor: colorGreysText),

                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: height * 0.023),


        ],
      ),
    );
  }


}
