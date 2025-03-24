import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExamHallAllocation extends StatefulWidget {
  @override
  _ExamHallAllocationState createState() => _ExamHallAllocationState();
}

class _ExamHallAllocationState extends State<ExamHallAllocation> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Padding(
        padding: EdgeInsets.all(width*0.008),
        child: Container(

          width: width,
          decoration: BoxDecoration(
            color: colorBox,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WantText(
                    text: "hall ",
                    fontSize: width * 0.016,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack),



                Spacer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

