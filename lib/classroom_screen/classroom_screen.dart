import 'package:digi_school/classroom_screen/announcements_widget.dart';
import 'package:digi_school/classroom_screen/homework_screen.dart';
import 'package:digi_school/classroom_screen/syllabus_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClassroomScreen extends StatefulWidget {
  @override
  _ClassroomScreenState createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> {

  final List<Map<String, dynamic>> _subjects = [
    {
      "subject":"Mathematics",
      "icon": "assets/icons/calculator.png",
      "subtitle": "Quadratic Equations",
      "iconColor": colorMainTheme,
    },
    {
      "subject": "Physics",
      "icon": "assets/icons/subject2.png",
      "subtitle": "Current Electricity",
      "iconColor": colorGreenCalendar,
    },
    {
      "subject": "English",
      "icon": "assets/icons/subject2.png",
      "subtitle": "Shakespeare's Sonnets",
      "iconColor": colorPurple,
    },
    {
      "subject": "Chemistry",
      "icon": "assets/icons/subject2.png",
      "subtitle": "Sandhi Rules",
      "iconColor": colorNotic,
    },
    {
      "subject": "Biology",
      "icon": "assets/icons/subject2.png",
      "subtitle": "Human Reproductive System",
      "iconColor": colorEvent,
    },

  ];
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/teacherimg.png",
                            height: height * 0.089,
                            // width: width * 0.16,
                          ),
                          SizedBox(width: width * 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WantText(
                                  text: "Mrs. Mrunal Patel",
                                  fontSize: width * 0.0138,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),
                              SizedBox(
                                height: height * 0.006,
                              ),
                              WantText(
                                  text: "PHD in Mathematics",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorDarkGreyText),

                              SizedBox(
                                height: height * 0.006,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: colorMainTheme,
                                    size: width * 0.007,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  WantText(
                                      text: "1234567898",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorMainTheme),
                                ],
                              ),

                            ],
                          ),
                          SizedBox(width: width*0.38),
                          WantText(
                              text: "Class Teacher",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorDarkGreyText),
                        ],
                      ),

                      SizedBox(height: height * 0.023),

                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width*0.008),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Container(
                              width: width*0.204,
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
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: [
                                  Image.asset('assets/icons/class1.png',width: width*0.03,),
                                  SizedBox(width: width*0.01,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "Pending Assignments",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorDarkGreyText),
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "4",
                                          fontSize: width * 0.0138,
                                          fontWeight: FontWeight.w700,
                                          textColor: colorPinkText),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: width*0.204,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('assets/icons/class2.png',width: width*0.03,),
                                  SizedBox(width: width*0.01,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "Completed Assignments",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorDarkGreyText),
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "12",
                                          fontSize: width * 0.0138,
                                          fontWeight: FontWeight.w700,
                                          textColor: colorGreenCalendar),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: width*0.204,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('assets/icons/class3.png',width: width*0.03,),
                                  SizedBox(width: width*0.01,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "Completed Assignments",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorDarkGreyText),
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "2",
                                          fontSize: width * 0.0138,
                                          fontWeight: FontWeight.w700,
                                          textColor: colorYellow),
                                    ],
                                  ),
                                ],
                              ),
                            ),



                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.023),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WantText(text: "On-Going Assignment", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                          SizedBox(
                            height: height * 0.035,
                            width: width * 0.033,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomeworkScreen()),
                                );
                              },
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
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.018),
                      Container(
                        width: width,
                        padding: EdgeInsets.all(width *0.009),

                        decoration: BoxDecoration(
                          color: colorWhite,
                          boxShadow: [
                            BoxShadow(
                              color: colorBoxshadow.withOpacity(0.1), // Light shadow
                              blurRadius: 2, // Soft shadow effect
                              offset: Offset(0, 2), // Shadow only at the bottom
                              spreadRadius: 0, // No spread on sides
                            ),
                          ],
                          borderRadius: BorderRadius.circular(width*0.0083),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/icons/recent1.png",width: width*0.02,),

                                    SizedBox(width: width * 0.01),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            text: 'Mathematics Quiz Completed',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w500,
                                            textColor: colorBlack),

                                        WantText(
                                            text: 'Chapter 4 - Exercise 4.2',
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


                            SizedBox(height: height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
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
                                            text: 'Chemistry  - Chemical Reactions',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w500,
                                            textColor: colorBlack),

                                        WantText(
                                            text: 'Lab Report Submission',
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
                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.023),
                      WantText(text: "Subjects", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SyllabusScreen()));
                        },
                        child: ListView.builder(
                          shrinkWrap: true,padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _subjects.length,
                          itemBuilder: (context, index) {
                            final subject = _subjects[index];
                            return Container(
                              margin: EdgeInsets.only(bottom: height * 0.015),
                              padding: EdgeInsets.all( width * 0.008),
                              decoration: BoxDecoration(
                                color: colorCustomButtonLabelWhite,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorBoxshadow.withOpacity(0.1), // Light shadow
                                    blurRadius: 2, // Soft shadow effect
                                    offset: Offset(0, 2), // Shadow only at the bottom
                                    spreadRadius: 0, // No spread on sides
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    subject["icon"]!,
                                    color: subject["iconColor"]!,
                                    width: width * 0.010,
                                    height: width * 0.010,
                                  ),


                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Text(
                                          subject["subject"]!,
                                          style: TextStyle(
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            color: colorBlack,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        subject["subtitle"]!,
                                        style: TextStyle(
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          color: colorDarkGreyText,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: width * 0.01,color: colorMainTheme,),
                                ],
                              ),
                            );
                          },
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          AnnouncementsWidget(),
        ],
      ),
    );
  }
}
