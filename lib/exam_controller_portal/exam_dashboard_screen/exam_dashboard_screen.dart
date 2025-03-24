import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExamDashboardScreen extends StatefulWidget {
  @override
  _ExamDashboardScreenState createState() => _ExamDashboardScreenState();
}

class _ExamDashboardScreenState extends State<ExamDashboardScreen> {

  @override
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
                    WantText(
                        text: "Dashboard Overview",
                        fontSize: width * 0.0138,
                        fontWeight: FontWeight.w400,
                        textColor: colorBlack),
                    // SizedBox(height: height*0.007,),
                    WantText(
                        text: "Welcome back, Sarah!",
                        fontSize: width * 0.011,
                        fontWeight: FontWeight.w400,
                        textColor: colorDarkGreyText),
                    SizedBox(height: height*0.023,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(width*0.011),
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

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: "Total Exams",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),

                                    WantText(
                                        text: "24",
                                        fontSize: width * 0.0166,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),

                                    WantText(
                                        text: "+2 this month",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreen),
                                  ],
                                ),
                                Image.asset('assets/images/examHome1.png',width: width*0.030,),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: width*0.008,),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(width*0.011),
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

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: "Ongoing Exams",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),

                                    WantText(
                                        text: "3",
                                        fontSize: width * 0.0166,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),

                                    WantText(
                                        text: "Active now",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorRedText),
                                  ],
                                ),
                                Image.asset('assets/images/libraryDash3.png',width: width*0.030),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: width*0.008,),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(width*0.011),
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

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: "Completed",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),

                                    WantText(
                                        text: "21",
                                        fontSize: width * 0.0166,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),

                                    WantText(
                                        text: "This semester",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreen),
                                  ],
                                ),
                                Image.asset('assets/images/examHome2.png',width: width*0.030,),

                              ],
                            ),

                          ),
                        ),
                        SizedBox(width: width*0.008,),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(width*0.011),
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

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    WantText(
                                        text: "Pass Rate",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),

                                    WantText(
                                        text: "89%",
                                        fontSize: width * 0.0166,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),

                                    WantText(
                                        text: "+5% from last term",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorPurple),
                                  ],
                                ),
                                Image.asset('assets/images/examHome3.png',width: width*0.030,),

                              ],
                            ),
                          ),
                        ),



                      ],
                    ),
                    SizedBox(height: height*0.023,),

                    Container(
                      width: width,
                      padding: EdgeInsets.all(width*0.011),
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
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              text: 'Upcoming Exams',
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          SizedBox(height: height*0.028,),
                          Container(
                            width: width,
                            padding: EdgeInsets.all(width*0.008),
                            decoration: BoxDecoration(
                              color: colorLightGrey,
                              borderRadius: BorderRadius.circular(width*0.008),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: 'Mathematics Final',
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorBlack),
                                    WantText(
                                        text: "Grade 10 | Room 101",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                                SizedBox(width: width*0.012,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: 'Tomorrow',
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorMainTheme),
                                    WantText(
                                        text: "9:00 AM",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height*0.018,),

                          Container(
                            width: width,
                            padding: EdgeInsets.all(width*0.008),
                            decoration: BoxDecoration(
                              color: colorLightGrey,
                              borderRadius: BorderRadius.circular(width*0.008),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: 'Physics Mid-term',
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorBlack),
                                    WantText(
                                        text: "Grade 11 | Room 203",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                                SizedBox(width: width*0.012,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: '23 Mar, 2025',
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreyTextLogIn),
                                    WantText(
                                        text: "10:30 AM",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height*0.018,),

                          Container(
                            width: width,
                            padding: EdgeInsets.all(width*0.008),
                            decoration: BoxDecoration(
                              color: colorLightGrey,
                              borderRadius: BorderRadius.circular(width*0.008),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: 'English Literature',
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorBlack),
                                    WantText(
                                        text: "Grade 9 | Room 105",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                                SizedBox(width: width*0.012,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: '25 Mar, 2025',
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreyTextLogIn),
                                    WantText(
                                        text: "11:00 AM",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height*0.023,),

                    Container(
                      width: width,
                      padding: EdgeInsets.all(width*0.008),
                      decoration: BoxDecoration(
                        color: colorLightYellowCon,
                        border: Border.all(color: colorYellowText),
                        borderRadius: BorderRadius.circular(width*0.008),

                      ),
                      child: Row(
                        children: [
                         Image.asset('assets/icons/errorreminder.png',width: width*0.0138,),

                          SizedBox(width: width*0.012,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WantText(
                                  text: 'Important Notice',
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorBrown),
                              WantText(
                                  text: "All department heads are requested to submit their question papers for the upcoming final exams by March 25, 2025.",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBrown),
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
                WantText(text: "Recent Notification", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 242, 242, 1),
                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/libraryDash8.png',width: width*0.012,),
                      SizedBox(width: width * 0.012),

                      WantText(
                          text: '5 books are overdue today',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorRedText),
                    ],
                  ),
                ),

                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(239, 246, 255, 1),

                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/quizeerror.png',width: width*0.012,),
                      SizedBox(width: width * 0.012),

                      WantText(
                          text: 'New books added to Science section',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorCustomButton),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 253, 245, 1),
                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/libraryDash9.png',width: width*0.012,),
                      SizedBox(width: width * 0.012),

                      WantText(
                          text: 'Monthly report generated',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorGreenCalendar),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}

