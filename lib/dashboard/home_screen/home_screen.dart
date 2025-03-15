import 'package:digi_school/dashboard/home_screen/notic_screen.dart';
import 'package:digi_school/dashboard/home_screen/notic_widget.dart';
import 'package:digi_school/dashboard/home_screen/time_table_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashHomeScreen extends StatefulWidget {
  @override
  _DashHomeScreenState createState() => _DashHomeScreenState();
}

class _DashHomeScreenState extends State<DashHomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


      body: Expanded(
        child: Row(
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
                    padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WantText(
                                text: "Notice",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                            GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> DashNoticeScreen()));},
                              child: Icon(Icons.arrow_forward_ios,color: colorMainTheme,size: width*0.015,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),

                        Container(
                            width: width,
                            padding: EdgeInsets.all( width * 0.01),
                            decoration: BoxDecoration(
                              color: colorCustomButtonLabelWhite,
                              borderRadius: BorderRadius.circular(width*0.0083),
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

                        WantText(
                            text: "Today's Schedule",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
                        SizedBox(height: height * 0.02),
                        Container(
                          width: width,
                          padding: EdgeInsets.all( width * 0.01),
                          decoration: BoxDecoration(
                            color: colorCustomButtonLabelWhite,
                            borderRadius: BorderRadius.circular(width*0.0083),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: width * 0.048,
                                    width: width * 0.048,
                                    child: Image.asset(
                                        "assets/images/today1.png"),
                                  ),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '3 Classes',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack),


                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: width * 0.048,
                                    width: width * 0.048,
                                    child: Image.asset(
                                        "assets/images/today2.png"),
                                  ),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '2 Meetings',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack),


                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: width * 0.048,
                                    width: width * 0.048,
                                    child: Image.asset(
                                        "assets/images/today3.png"),
                                  ),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '2 Tasks',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack),


                                ],
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        CustomButton(Width: width, onTap: (){}, label: "Take Attendance"),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WantText(
                                text: "Upcoming Classes",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                            GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> TimeTableScreen()));},
                              child: Icon(Icons.arrow_forward_ios,color: colorMainTheme,size: width*0.015,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),

                        Container(
                          width: width,
                          padding: EdgeInsets.all( width * 0.008),
                          decoration: BoxDecoration(
                            color: colorCustomButtonLabelWhite,
                            borderRadius: BorderRadius.circular(width*0.0083),

                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: width * 0.044,
                                    width: width * 0.044,
                                    child: Image.asset(
                                        "assets/images/Matrices.png"),
                                  ),

                                  SizedBox(width: width * 0.01),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: '12th A: Mathematics ',
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w600,
                                          textColor: colorBlack),

                                      WantText(
                                          fontFamily: "Roboto",
                                          text: 'Chapter 4: Determinants    ',
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorDarkGreyText),
                                      WantText(
                                          fontFamily: "Roboto",
                                          text:
                                          'Time : 10:30 am',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorDarkGreyText),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),


                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WantText(
                                text: "Pending Evaluations",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                            Icon(Icons.arrow_forward_ios,color: colorMainTheme,size: width*0.015),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Container(
                          width: width,
                          padding: EdgeInsets.all( width * 0.008),
                          decoration: BoxDecoration(
                            color: colorCustomButtonLabelWhite,
                            borderRadius: BorderRadius.circular(width*0.0083),

                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: width * 0.035),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Trigonometry Test',
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w600,
                                      textColor: colorBlack),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '5 Left',
                                      fontSize: width * 0.006,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorYellow),
                                ],
                              ),

                              WantText(
                                  fontFamily: "Roboto",
                                  text: 'Submission Date : 5 days ago',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorDarkGreyText),
                              // SizedBox(height: height*0.005,),
                              WantText(
                                  fontFamily: "Roboto",
                                  text:
                                  'Class : Grade 10 - B',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorDarkGreyText),
                              SizedBox(height: height*0.016,),
                              CustomButton(Width: width, onTap: (){}, label: 'Grade now'),
                            ],
                          ),
                        ),
                        SizedBox(height: height*0.016,),
                        Container(
                          width: width,
                          padding: EdgeInsets.all( width * 0.008),
                          decoration: BoxDecoration(
                            color: colorCustomButtonLabelWhite,
                            borderRadius: BorderRadius.circular(width*0.0083),

                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: width * 0.035),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Final Exam Review',
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w600,
                                      textColor: colorBlack),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Overdue',
                                      fontSize: width * 0.006,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorMaroonText),
                                ],
                              ),

                              WantText(
                                  fontFamily: "Roboto",
                                  text: 'Submission Date : 10 days ago',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorDarkGreyText),
                              // SizedBox(height: height*0.005,),
                              WantText(
                                  fontFamily: "Roboto",
                                  text:
                                  'Class : Grade 12 - B',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorDarkGreyText),
                              SizedBox(height: height*0.016,),
                              CustomButton(Width: width, onTap: (){}, label: 'Grade now'),
                            ],
                          ),
                        ),

                        SizedBox(height: height * 0.023),

                        WantText(
                            text: "Quick Actions",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
                        SizedBox(height: height * 0.02),
                        Column(
                          children: [
                            Container(
                              width: width,
                              padding: EdgeInsets.all( width * 0.008),
                              decoration: BoxDecoration(
                                color: colorCustomButtonLabelWhite,
                                borderRadius: BorderRadius.circular(width*0.006),

                              ),
                              child: WantText(
                                  fontFamily: "Roboto",
                                  text: 'Mark Attendance',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
                            ),
                            SizedBox(height: height*0.016,),
                            Container(
                              width: width,
                              padding: EdgeInsets.all( width * 0.008),
                              decoration: BoxDecoration(
                                color: colorCustomButtonLabelWhite,
                                borderRadius: BorderRadius.circular(width*0.006),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorBoxshadow.withOpacity(0.1),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                              child: WantText(
                                  fontFamily: "Roboto",
                                  text: 'Create Assignment',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
                            ),
                            SizedBox(height: height*0.016,),
                            Container(
                              width: width,
                              padding: EdgeInsets.all( width * 0.008),
                              decoration: BoxDecoration(
                                color: colorCustomButtonLabelWhite,
                                borderRadius: BorderRadius.circular(width*0.006),

                              ),
                              child: WantText(
                                  fontFamily: "Roboto",
                                  text: 'Schedule Exam',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
                            ),
                            SizedBox(height: height*0.016,),
                            Container(
                              width: width,
                              padding: EdgeInsets.all( width * 0.008),
                              decoration: BoxDecoration(
                                color: colorCustomButtonLabelWhite,
                                borderRadius: BorderRadius.circular(width*0.006),

                              ),
                              child: WantText(
                                  fontFamily: "Roboto",
                                  text: 'Send Announcement',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
                            ),
                            SizedBox(height: height*0.016,),
                            Container(
                              width: width,
                              padding: EdgeInsets.all( width * 0.008),
                              decoration: BoxDecoration(
                                color: colorCustomButtonLabelWhite,
                                borderRadius: BorderRadius.circular(width*0.006),

                              ),
                              child: WantText(
                                  fontFamily: "Roboto",
                                  text: 'Upload Study Material',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
                            ),

                          ],
                        ),
                        SizedBox(height: height*0.016,),


                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: width*0.004,),
            NoticWidget(),
          ],
        ),
      ),
    );
  }
}

