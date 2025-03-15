import 'package:digi_school/utils/theam_manager.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/want_text.dart';

class NoticWidget extends StatelessWidget {
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
          WantText(text: "Notic", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
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
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                WantText(
                    fontFamily: "Roboto",
                    text: '23 December 2024',
                    fontSize: width * 0.011,
                    fontWeight: FontWeight.w600,
                    textColor: colorBlack),
                SizedBox(height: height * 0.01),

                WantText(
                    fontFamily: "Roboto",
                    text: 'PTM on Jan 25, 10:30 AM, Room 204. Parents requested to attend.',
                    fontSize: width * 0.0097,
                    fontWeight: FontWeight.w400,
                    textOverflow: TextOverflow.visible,
                    textColor: colorBlack),

              ],
            ),
          ),

          SizedBox(height: height * 0.023),






        ],
      ),
    );
  }


}
