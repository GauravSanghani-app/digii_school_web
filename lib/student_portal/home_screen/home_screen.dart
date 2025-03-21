
import 'package:digi_school/student_portal/home_screen/home_announcements_widget.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(width*0.011),
            child: Container(

              width: width*0.665,
              decoration: BoxDecoration(
                color: colorBox,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width*0.008),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(width *0.005),
                                margin: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                                decoration: BoxDecoration(
                                  color: colorBoxBackground,
                                  borderRadius: BorderRadius.circular(width*0.008),
                                  border: Border(
                                    bottom: BorderSide(color: colorGrey,),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorGrey.withOpacity(0.7),
                                      offset: Offset(0, 1), // Shadow below the container
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icons/div.png',width: width*0.03,),
                                    SizedBox(width: width*0.01,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "Attendance",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorDarkGreyText),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "95%",
                                            fontSize: width * 0.0138,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorBlack),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(width *0.005),
                                margin: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                                decoration: BoxDecoration(
                                  color: colorBoxBackground,
                                  borderRadius: BorderRadius.circular(width*0.008),
                                  border: Border(
                                    bottom: BorderSide(color: colorGrey,),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorGrey.withOpacity(0.7),
                                      offset: Offset(0, 1), // Shadow below the container
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icons/div2.png',width: width*0.03,),
                                    SizedBox(width: width*0.01,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "Overall Grade",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorDarkGreyText),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "A+",
                                            fontSize: width * 0.0138,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorBlack),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                // width: width*0.152,
                                padding: EdgeInsets.all(width *0.005),
                                margin: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                                decoration: BoxDecoration(
                                  color: colorBoxBackground,
                                  borderRadius: BorderRadius.circular(width*0.008),
                                  border: Border(
                                    bottom: BorderSide(color: colorGrey,),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorGrey.withOpacity(0.7),
                                      offset: Offset(0, 1), // Shadow below the container
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icons/div3.png',width: width*0.03,),
                                    SizedBox(width: width*0.01,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "Achievements",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorDarkGreyText),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "12",
                                            fontSize: width * 0.0138,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorBlack),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(width *0.005),
                                margin: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                                decoration: BoxDecoration(
                                  color: colorBoxBackground,
                                  borderRadius: BorderRadius.circular(width*0.008),
                                  border: Border(
                                    bottom: BorderSide(color: colorGrey,),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorGrey.withOpacity(0.7),
                                      offset: Offset(0, 1), // Shadow below the container
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icons/div4.png',width: width*0.03,),
                                    SizedBox(width: width*0.01,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "Due Tasks",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorDarkGreyText),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "3",
                                            fontSize: width * 0.0138,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorBlack),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height * 0.023),
                                WantText(text: "Recent Activities", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                                SizedBox(height: height * 0.005),
                                Container(
                                  padding: EdgeInsets.all(width *0.009),

                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(width*0.0083),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/icons/recent1.png",width: width*0.02,),

                                          SizedBox(width: width * 0.01),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  text: 'Mathematics Quiz Completed',
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorBlack),

                                              WantText(
                                                  text: 'Score: 92/100',
                                                  fontFamily: "Roboto",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorDarkGreyText),
                                              WantText(
                                                  text: '2 hours ago',
                                                  fontFamily: "Roboto",
                                                  fontSize: width * 0.0083,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorGreysText),
                                            ],
                                          ),
                                        ],
                                      ),


                                      SizedBox(height: height * 0.02),

                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/icons/recent2.png",width: width*0.02,),

                                          SizedBox(width: width * 0.01),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  text: 'Science Project Submitted',
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorBlack),

                                              WantText(
                                                  text: 'Topic: Renewable Energy',
                                                  fontFamily: "Roboto",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorDarkGreyText),
                                              WantText(
                                                  text: 'Yesterday',
                                                  fontFamily: "Roboto",
                                                  fontSize: width * 0.0083,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorGreysText),
                                            ],
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: height * 0.02),

                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/icons/recent3.png",width: width*0.02,),

                                          SizedBox(width: width * 0.01),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  text: 'Won First Prize',
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorBlack),

                                              WantText(
                                                  text: 'Inter-school Debate Competition',
                                                  fontFamily: "Roboto",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorDarkGreyText),
                                              WantText(
                                                  text: '2 days ago',
                                                  fontFamily: "Roboto",
                                                  fontSize: width * 0.0083,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorGreysText),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width*0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height * 0.02),
                                WantText(text: "Upcoming Events", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                                SizedBox(height: height * 0.005),
                                Container(
                                  // width: width*0.310,
                                  padding: EdgeInsets.all(width *0.009),

                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(width*0.0083),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/icons/upcoming1.png",width: width*0.02,),

                                          SizedBox(width: width * 0.01),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  text: 'Parent-Teacher Meeting',
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorBlack),

                                              WantText(
                                                  fontFamily: "Roboto",
                                                  text: 'March 15, 2025',
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorDarkGreyText),
                                              WantText(
                                                  fontFamily: "Roboto",
                                                  text: '10:00 AM - 12:00 PM',
                                                  fontSize: width * 0.0083,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorGreysText),
                                            ],
                                          ),
                                        ],
                                      ),


                                      SizedBox(height: height * 0.02),

                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/icons/upcoming2.png",width: width*0.02,),

                                          SizedBox(width: width * 0.01),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  text: 'Annual Sports Day',
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorBlack),

                                              WantText(
                                                  text: 'March 20, 2025',
                                                  fontFamily: "Roboto",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorDarkGreyText),
                                              WantText(
                                                  text: 'All Day Event',
                                                  fontFamily: "Roboto",
                                                  fontSize: width * 0.0083,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorGreysText),
                                            ],
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: height * 0.02),

                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/icons/upcoming3.png",width: width*0.02,),

                                          SizedBox(width: width * 0.01),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  text: 'Term End Exams',
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorBlack),

                                              WantText(
                                                  text: 'Starting March 25, 2025',
                                                  fontFamily: "Roboto",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorDarkGreyText),
                                              WantText(
                                                  fontFamily: "Roboto",
                                                  text: 'Schedule Posted',
                                                  fontSize: width * 0.0083,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorGreysText),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height * 0.023),
                                WantText(text: "Assignment", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                                SizedBox(height: height * 0.005),
                                Container(
                                  padding: EdgeInsets.all(width *0.009),

                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(width*0.0083),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Mathematics',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                          SizedBox(
                                            height: height * 0.028,
                                            width: width * 0.095,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border:
                                                Border.all(color: colorLightRed),
                                                color: colorLightRed,
                                                borderRadius: BorderRadius.circular(
                                                    width * 0.03),
                                              ),
                                              child: Center(
                                                child: WantText(
                                                    fontFamily: "Roboto",
                                                    text: 'Due: Dec 30, 2024',
                                                    fontSize: width * 0.0097,
                                                    fontWeight: FontWeight.w400,
                                                    textColor: colorWhite),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.015,
                                      ),
                                      WantText(
                                          text: 'Chapter 7 : Exercise problems. ',
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorDarkGreyText),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: width*0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height * 0.02),
                                WantText(text: "Weekly Quizzes ", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                                SizedBox(height: height * 0.005),
                                Container(
                                  padding: EdgeInsets.all(width *0.009),

                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(width*0.0083),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Mathematics',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                          SizedBox(
                                            height: height * 0.028,
                                            width: width * 0.033,
                                            child: Container(
                                              decoration: BoxDecoration(


                                                color: colorLightGreen,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: WantText(
                                                    fontFamily: "Roboto",
                                                    text: 'View',
                                                    fontSize: width * 0.0097,
                                                    fontWeight: FontWeight.w400,
                                                    textColor: colorGreen),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.015,
                                      ),
                                      WantText(
                                          text: 'Chapter 7 : Exercise problems. ',
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorDarkGreyText),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height * 0.023),
                                WantText(text: "Fee Status", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                                SizedBox(height: height * 0.005),
                                Container(
                                  height: height*0.23,
                                  padding: EdgeInsets.all(width *0.009),

                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(width*0.0083),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Term 2 Fee',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                          SizedBox(
                                            height: height * 0.039,
                                            width: width * 0.033,
                                            child: Container(
                                              decoration: BoxDecoration(

                                                color: colorBrightGreenContainer,
                                                borderRadius: BorderRadius.circular(9999),
                                              ),
                                              child: Center(
                                                child: WantText(
                                                    fontFamily: "Roboto",
                                                    text: 'Paid',
                                                    fontSize: width * 0.0097,
                                                    fontWeight: FontWeight.w400,
                                                    textColor: colorGreenCalendar),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: height * 0.015,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Transport Fee',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                          SizedBox(
                                            height: height * 0.039,
                                            width: width * 0.033,
                                            child: Container(
                                              decoration: BoxDecoration(


                                                color: colorPinkContainer,
                                                borderRadius: BorderRadius.circular(9999),
                                              ),
                                              child: Center(
                                                child: WantText(
                                                    fontFamily: "Roboto",
                                                    text: 'Due',
                                                    fontSize: width * 0.0097,
                                                    fontWeight: FontWeight.w400,
                                                    textColor: colorPinkText),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: height * 0.015,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Lab Fee',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                          SizedBox(
                                            height: height * 0.039,
                                            width: width * 0.033,
                                            child: Container(
                                              decoration: BoxDecoration(


                                                color: colorBrightGreenContainer,
                                                borderRadius: BorderRadius.circular(9999),
                                              ),
                                              child: Center(
                                                child: WantText(
                                                    fontFamily: "Roboto",
                                                    text: 'Paid',
                                                    fontSize: width * 0.0097,
                                                    fontWeight: FontWeight.w400,
                                                    textColor: colorGreenCalendar),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width*0.02),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height * 0.02),
                                WantText(text: "School Bus Location", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                                SizedBox(height: height * 0.005),
                                Container(
                                  padding: EdgeInsets.all(width *0.009),

                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(width*0.0083),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/icons/bus.png',width: width*0.02),
                                          SizedBox(width: width * 0.01),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  fontFamily: "Roboto",
                                                  text: "Bus No. 15",
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorBlack),
                                              WantText(
                                                  fontFamily: "Roboto",
                                                  text: "Route: Downtown - School",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorDarkGreyText),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Current Location:',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Main Street',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w500,
                                              textColor: colorBlack),
                                        ],
                                      ),

                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'ETA                       :',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: '10 mins',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w500,
                                              textColor: colorBlack),
                                        ],
                                      ),

                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Driver                    :',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Mr. Robert',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w500,
                                              textColor: colorBlack),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: 'Contact                :',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: '+91-98765-43210',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w500,
                                              textColor: colorBlack),
                                        ],
                                      ),


                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          HomeAnnouncementsWidget(),
        ],
      ),
    );
  }
}

