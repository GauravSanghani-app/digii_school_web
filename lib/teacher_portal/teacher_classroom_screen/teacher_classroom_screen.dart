import 'package:digi_school/dashboard/message_screen/reminder_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';

import '../../utils/custom_button.dart';
import '../../utils/want_text.dart';


class TeacherClassroomScreen extends StatefulWidget {
  @override
  _TeacherClassroomScreenState createState() => _TeacherClassroomScreenState();
}

class _TeacherClassroomScreenState extends State<TeacherClassroomScreen> {



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(width*0.008),
            child: Container(

              width: width*0.665,
              decoration: BoxDecoration(
                color: colorBox,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WantText(
                                text: "Mathematics Classroom",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                            SizedBox(height: height*0.005,),
                            WantText(
                                text: "Grade 10 - Section A",
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                          ],
                        ),

                            Spacer(),

                            CustomButton(
                              Width: width*0.143,
                              onTap: (){},
                              paddingVertical: height*0.006,
                              labelWidget: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add,color: colorWhite,size: width*0.012,),
                                  SizedBox(width: width*0.008,),
                                  WantText(
                                      text: "Create New Content",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorWhite),
                                ],
                              ),
                            )

                      ],
                    ),

                    SizedBox(height: height * 0.02),

                    Container(
                      padding:  EdgeInsets.all(width*0.009),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width*0.008),
                        boxShadow: [
                          BoxShadow(
                            color: colorBoxshadow.withOpacity(0.1),
                            blurRadius: 2,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WantText(
                                  text: "Current Lesson Plan",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),

                              Row(
                                children: [
                                  Icon(Icons.edit,color: colorCustomButton,size: width*0.016,),
                                  SizedBox(width: width*0.008,),
                                  WantText(
                                      text: "Edit Plan",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorCustomButton),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: height*0.012,),
                          Row(
                            children: [
                              Image.asset("assets/icons/subject2.png",width: width*0.01,color: colorCustomButton,),

                              SizedBox(width: width*0.008,),

                              WantText(
                                  text: "Topic: Quadratic Equations",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack),
                            ],
                          ),
                          SizedBox(height: height*0.012,),
                          Row(
                            children: [
                              Icon(Icons.access_time_filled,color: colorCustomButton,size: width*0.0125,),

                              SizedBox(width: width*0.008,),

                              WantText(
                                  text: "Duration: 45 minutes",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack),
                            ],
                          ),
                          SizedBox(height: height*0.012,),
                          Row(
                            children: [
                              Image.asset("assets/icons/teachercalender.png",width: width*0.01,color: colorCustomButton,),

                              SizedBox(width: width*0.008,),

                              WantText(
                                  text: "Date: March 15, 2025",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.02),

                    Container(
                      padding:  EdgeInsets.all(width*0.009),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width*0.008),
                        boxShadow: [
                          BoxShadow(
                            color: colorBoxshadow.withOpacity(0.1),
                            blurRadius: 2,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              text: "Course Materials",
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),
                          SizedBox(height: height*0.012,),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:  EdgeInsets.all(width*0.011),
                                  decoration: BoxDecoration(
                                      color: colorWhite,
                                      borderRadius: BorderRadius.circular(width*0.008),
                                      border: Border.all(color: colorGreyBorder)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset("assets/icons/pdfrecent.png",width: width*0.0138),

                                          SizedBox(width: width*0.008,),

                                          WantText(
                                              text: "Syllabus",
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w600,
                                              textColor: colorBlack),
                                          Spacer(),
                                          Image.asset("assets/icons/buttonup.png",width: width*0.012),

                                        ],
                                      ),
                                      SizedBox(height: height*0.010,),
                                      WantText(
                                          text: "Upload course syllabus and learning objectives",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorGreyTextLogIn),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.01),

                              Expanded(
                                child: Container(
                                  padding:  EdgeInsets.all(width*0.009),
                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(width*0.008),
                                    border: Border.all(color: colorGreyBorder)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset("assets/icons/teacherYellow.png",width: width*0.0138),

                                          SizedBox(width: width*0.008,),

                                          WantText(
                                              text: "Class Notes",
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w600,
                                              textColor: colorBlack),
                                          Spacer(),
                                          Image.asset("assets/icons/buttonup.png",width: width*0.012),

                                        ],
                                      ),
                                      SizedBox(height: height*0.010,),
                                      WantText(
                                          text: "Share lecture notes and study materials",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorGreyTextLogIn),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),

                    Spacer(),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          Container(
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
                WantText(
                    text: "Video Lectures",
                    fontSize: width * 0.0125,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack),
                Divider(color: colorDivider,thickness: 1,),
                SizedBox(height: height * 0.016),

                Container(
                  padding:  EdgeInsets.all(width*0.009),
                  decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width*0.008),
                      border: Border.all(color: colorGreyBorder)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icons/teacherMx.png",width: width*0.0138),

                          SizedBox(width: width*0.008,),

                          WantText(
                              text: "Introduction to Algebra",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w600,
                              textColor: colorBlack),

                        ],
                      ),
                      SizedBox(height: height*0.010,),
                      WantText(
                          text: "Duration: 15:30",
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textColor: colorGreyTextLogIn),
                      SizedBox(height: height*0.010,),

                      Row(
                        children: [
                          Image.asset("assets/icons/teacheredit.png",width: width*0.010,color: colorMainTheme,),
                          SizedBox(width: width*0.007,),
                          Image.asset("assets/icons/teacherdelete.png",width: width*0.010,color: colorRedCalendar,),
                        ],
                      ),

                    ],
                  ),
                ),

                SizedBox(height: height * 0.02),
                Container(
                  padding:  EdgeInsets.all(width*0.009),
                  decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width*0.008),
                      border: Border.all(color: colorGreyBorder)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(Icons.add,color: colorGreyTextLogIn,size: width*0.016,) ,
                      SizedBox(width: width*0.008,),

                      WantText(
                          text: "Add New Video",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w400,
                          textColor: colorGreyTextLogIn),

                    ],
                  ),
                ),
                SizedBox(height: height * 0.04),
                WantText(
                    text: "Library Resources",
                    fontSize: width * 0.0125,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack),
                Divider(color: colorDivider,thickness: 1,),
                SizedBox(height: height * 0.016),

                Row(
                  children: [
                    Image.asset("assets/images/medals1.png",width: width*0.0138,color: colorPurple,),

                    SizedBox(width: width*0.012,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WantText(
                            text: "Mathematics Textbook",
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                        SizedBox(height: height*0.007,),
                        WantText(
                            text: "Standard Reference",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorGreyTextLogIn),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: height * 0.028),

                Row(
                  children: [
                    Image.asset("assets/icons/calculator.png",width: width*0.0130,color: colorGreenCalendar,),

                    SizedBox(width: width*0.012,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WantText(
                            text: "Practice Problems",
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                        SizedBox(height: height*0.007,),
                        WantText(
                            text: "Question Bank",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorGreyTextLogIn),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: height * 0.028),

                Row(
                  children: [
                    Image.asset("assets/images/teacherVisual.png",width: width*0.0130,color: colorCustomButton),

                    SizedBox(width: width*0.012,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WantText(
                            text: "Visual Aids",
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                        SizedBox(height: height*0.007,),
                        WantText(
                            text: "Visual Aids",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorGreyTextLogIn),
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



