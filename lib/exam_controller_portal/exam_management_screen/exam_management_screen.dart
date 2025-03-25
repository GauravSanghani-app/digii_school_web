import 'package:digi_school/exam_controller_portal/exam_dashboard_screen/recent_notification_widget.dart';
import 'package:digi_school/exam_controller_portal/exam_management_screen/create_new_exam.dart';
import 'package:digi_school/exam_controller_portal/exam_management_screen/exam_schedule_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExamManagementScreen extends StatefulWidget {
  @override
  _ExamManagementScreenState createState() => _ExamManagementScreenState();
}

class _ExamManagementScreenState extends State<ExamManagementScreen> {




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
                        text: "Exam Management",
                        fontSize: width * 0.0138,
                        fontWeight: FontWeight.w400,
                        textColor: colorBlack),
                    // SizedBox(height: height*0.007,),
                    WantText(
                        text: "Create and manage school examinations efficiently",
                        fontSize: width * 0.011,
                        fontWeight: FontWeight.w400,
                        textColor: colorDarkGreyText),
                    SizedBox(height: height*0.023,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [

                        CustomButton(
                          Width: width*0.124,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateNewExam()));
                          },
                          paddingVertical: height*0.008,
                          labelWidget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,color: colorWhite,size: width*0.012,),
                              SizedBox(width: width*0.003,),
                              WantText(
                                  text: "Create New Exam",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorWhite),
                            ],
                          ),
                        ),
                        SizedBox(width: width*0.016,),


                        CustomButton(
                          Width: width*0.116,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ExamScheduleScreen()));
                          },
                          paddingVertical: height*0.008,
                          backgroundColor: colorGrey,
                          borderColor: colorGrey,
                          labelWidget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_today,color: colorBlack,size: width*0.012,),
                              SizedBox(width: width*0.008,),
                              WantText(
                                  text: "View Schedule",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: height * 0.023),
                    Container(
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

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          WantText(
                              text: "Portion Completion Status",
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),
                          SizedBox(height: height*0.010),
                          Divider(color: colorGreyBorder, thickness: 1),
                          SizedBox(height: height*0.016),
                          WantText(
                              text: "Mid-Term Mathematics",
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          SizedBox(height: height*0.005,),

                          WantText(
                              text: "Grade 10 | Duration: 2 hours",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                          SizedBox(height: height*0.008,),
                       
                          Row(
                            children: [
                              Icon(Icons.calendar_today,color: colorBlack,size: width*0.011,),
                              SizedBox(width: width*0.004,),

                              WantText(
                                  text: "March 15, 2025",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorGreyTextLogIn),
                              SizedBox(width: width*0.016,),

                              Icon(Icons.access_time,color: colorBlack,size: width*0.011,),
                              SizedBox(width: width*0.004,),

                              WantText(
                                  text: "09:00 AM",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorGreyTextLogIn),
                            ],
                          ) ,
                          SizedBox(height: height*0.010),
                          Divider(color: colorGreyBorder, thickness: 1),
                          SizedBox(height: height*0.016),
                          WantText(
                              text: "Final Science Examination",
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          SizedBox(height: height*0.005,),

                          WantText(
                              text: "Grade 9 | Duration: 3 hours",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                          SizedBox(height: height*0.008,),

                          Row(
                            children: [
                              Icon(Icons.calendar_today,color: colorBlack,size: width*0.011,),
                              SizedBox(width: width*0.004,),

                              WantText(
                                  text: "March 20, 2025",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorGreyTextLogIn),
                              SizedBox(width: width*0.016,),

                              Icon(Icons.access_time,color: colorBlack,size: width*0.011,),
                              SizedBox(width: width*0.004,),

                              WantText(
                                  text: "10:30 AM",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorGreyTextLogIn),
                            ],
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.023),
                    Container(
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

                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Question Bank",
                                      fontSize: width * 0.0125,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),

                                  WantText(
                                      text: "Access and manage question papers",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ],
                              ),
                              Image.asset('assets/icons/subject2.png',width: width*0.012,color: colorCustomButton,),

                            ],
                          ),
                          SizedBox(height: height*0.02,),
                          CustomButton(
                            Width: width*0.125,
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>LibraryAddNewBook()));
                            },
                            paddingVertical: height*0.008,
                            backgroundColor: colorBoxshadow,
                            borderColor: colorBoxshadow,
                            labelWidget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/buttonup.png',width: width*0.0115,color: colorBlack,),
                                SizedBox(width: width*0.008,),
                                WantText(
                                    text: "Upload",
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                              ],
                            ),
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

          RecentNotificationWidget(),
        ],
      ),
    );
  }
}

