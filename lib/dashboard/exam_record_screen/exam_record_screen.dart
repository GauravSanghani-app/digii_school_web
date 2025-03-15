
import 'package:digi_school/exam_screen/quize_widget/quizzes_result_screen.dart';
import 'package:digi_school/exam_screen/quize_widget/quizzes_schedule_screen.dart';
import 'package:digi_school/exam_screen/recent_activity_widget.dart';
import 'package:digi_school/exam_screen/termtest_widget/midterm_test/mid_test_result.dart';
import 'package:digi_school/exam_screen/termtest_widget/midterm_test/mid_test_schedule.dart';
import 'package:digi_school/exam_screen/weekly_test_widget/test_result_screen.dart';
import 'package:digi_school/exam_screen/weekly_test_widget/test_schedule_screen.dart';
import 'package:digi_school/exam_screen/year_widget/quarterly_exam/exam_result_screen.dart';
import 'package:digi_school/exam_screen/year_widget/quarterly_exam/exam_schedule_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class DashExamRecordScreen extends StatefulWidget {
  @override
  _DashExamRecordScreenState createState() => _DashExamRecordScreenState();
}

class _DashExamRecordScreenState extends State<DashExamRecordScreen> {

  bool _isExpanded = false;

  bool _isExpanded2 = false;

  bool _isExpandedterm = false;
  final List<Map<String, dynamic>> _categories = [
    {
      "title": "I-Mid Term Test",
      "icon": "assets/icons/termtest1.png",
      "iconColor": colorMainTheme,
      "isExpanded": false,
      "subItems": [
        {
          "title": "Test Schedule",
          "icon": "assets/icons/exam_schedule.png",
          "iconColor": colorMainTheme,
          "route": MidTestScheduleScreen(),
        },
        {
          "title": "Test Result",
          "icon": "assets/icons/report_card.png",
          "iconColor": colorGreenCalendar,
          "route": MidTestResultScreen(),
        },
      ],
    },
    {
      "title": "II-Mid Term Test",
      "icon": "assets/icons/termtest1.png",
      "iconColor": colorOrange,
      "isExpanded": false,
      "subItems": [
        {
          "title": "Test Schedule",
          "icon": "assets/icons/exam_schedule.png",
          "iconColor": colorMainTheme,
          "route": MidTestScheduleScreen(),
        },
        {
          "title": "Test Result",
          "icon": "assets/icons/report_card.png",
          "iconColor": colorGreenCalendar,
          "route": MidTestResultScreen(),
        },
      ],
    },
    {
      "title": "III-Mid Term Test",
      "icon": "assets/icons/termtest1.png",
      "iconColor": colorGreenCalendar,
      "isExpanded": false,
      "subItems": [
        {
          "title": "Test Schedule",
          "icon": "assets/icons/exam_schedule.png",
          "iconColor": colorMainTheme,
          "route": MidTestScheduleScreen(),
        },
        {
          "title": "Test Result",
          "icon": "assets/icons/report_card.png",
          "iconColor": colorGreenCalendar,
          "route": MidTestResultScreen(),
        },
      ],
    },
  ];

  bool _isExpanded4 = false;
  final List<Map<String, dynamic>> _listName = [
    {
      "title": "Quarterly Exam",
      "icon": "assets/icons/quarterly.png",
      "iconColor": colorMainTheme,
      "isExpanded4": false,
      "subItems": [
        {
          "title": "Exam Schedule",
          "icon": "assets/icons/exam_schedule.png",
          "iconColor": colorMainTheme,
          "route": ExamScheduleScreen(),
        },
        {
          "title": "Exam Result",
          "icon": "assets/icons/report_card.png",
          "iconColor": colorGreenCalendar,
          "route": ExamResultScreen(),
        },
      ],
    },
    {
      "title": "Half-yearly Exam",
      "icon": "assets/icons/halfyearly.png",
      "iconColor": colorOrange,
      "isExpanded4": false,
      "subItems": [
        {
          "title": "Exam Schedule",
          "icon": "assets/icons/exam_schedule.png",
          "iconColor": colorMainTheme,
          "route": ExamScheduleScreen(),
        },
        {
          "title": "Exam Result",
          "icon": "assets/icons/report_card.png",
          "iconColor": colorGreenCalendar,
          "route": ExamResultScreen(),
        },
      ],
    },
    {
      "title": "Annual Examination",
      "icon": "assets/icons/annual.png",
      "iconColor": colorGreenCalendar,
      "isExpanded4": false,
      "subItems": [
        {
          "title": "Exam Schedule",
          "icon": "assets/icons/exam_schedule.png",
          "iconColor": colorMainTheme,
          "route": ExamScheduleScreen(),
        },
        {
          "title": "Exam Result",
          "icon": "assets/icons/report_card.png",
          "iconColor": colorGreenCalendar,
          "route": ExamResultScreen(),
        },
      ],
    },
  ];


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
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const ExamScheduleScreen(),));
                    
                        },
                          child: Container(
                            width: width * 0.318,
                            padding: EdgeInsets.all( width * 0.008),
                            decoration: BoxDecoration(
                              color: colorCustomButtonLabelWhite,
                              borderRadius: BorderRadius.circular(width*0.0138),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ImageIcon(
                                      const AssetImage('assets/icons/exam_schedule.png'),
                                      color: colorCustomButton,
                                      size: width * 0.0138,
                                    ),
                                    WantText(
                                      text: 'View',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText,
                                    ),
                                  ],
                                ),
                                SizedBox(height: height*0.01,),
                                WantText(
                                  text: "Exam Schedule",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack,
                                  fontFamily: 'Poppins',
                                ),
                                SizedBox(height: height*0.006,),
                    
                                WantText(
                                  text: "Latest exam dates",
                                  fontSize: width * 0.0083,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorDarkGreyText,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: width * 0.008),
                        GestureDetector(onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => ReportCardScreen(),));
                    
                        },
                          child: Container(
                            width: width * 0.318,
                            padding: EdgeInsets.all( width * 0.008),
                            decoration: BoxDecoration(
                              color: colorCustomButtonLabelWhite,
                              borderRadius: BorderRadius.circular(width*0.0138),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ImageIcon(
                                      const AssetImage('assets/icons/report_card.png'),
                                      color: colorGreenCalendar,
                                      size: width * 0.0138,
                                    ),
                                    WantText(
                                      text: 'View',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText,
                                    ),
                                  ],
                                ),
                                SizedBox(height: height*0.01,),
                    
                                WantText(
                                  text: "Report Card",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack,
                                  fontFamily: 'Poppins',
                                ),
                                SizedBox(height: height*0.006),
                    
                                WantText(
                                  text: "Term Results",
                                  fontSize: width * 0.0083,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorDarkGreyText,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                        SizedBox(height: height * 0.023),
                    
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                    
                          children: [
                            WantText(
                              text: "Exam Categories",
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack,
                              fontFamily: 'Poppins',
                            ),
                            SizedBox(height: height * 0.02),
                    
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isExpanded = !_isExpanded;
                                });
                              },
                              child: Container(
                                width: width,
                                padding: EdgeInsets.all(width * 0.011,),
                    
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorBoxshadow.withOpacity(0.2), // Light shadow
                                      blurRadius: 1, // Soft shadow effect
                                      offset: Offset(0, 2), // Shadow only at the bottom
                                      spreadRadius: 0, // No spread on sides
                                    ),
                                  ],
                                  color: Colors.white,
                                  // borderRadius: BorderRadius.circular(width * 0.0083),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/quize.png",
                                      width: width * 0.027,
                                      height: width * 0.027,
                                    ),
                                    SizedBox(width: width * 0.01),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          WantText(
                                            text: 'Quizzes',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack,
                                          ),
                                          SizedBox(height: height * 0.006),
                                          WantText(
                                            text: 'Semester Exam',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorDarkGreyText,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(_isExpanded
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_right,
                                      color: colorMainTheme,
                                      size: width * 0.025,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    
                            if (_isExpanded)
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => QuizzesScheduleScreen()));
                                    },
                                    child: Container(
                                      width: width,
                                      decoration: BoxDecoration(
                                        color: colorGrey,
                                        boxShadow: [
                                          BoxShadow(
                                            color: colorGrey.withOpacity(0.2),
                                            blurRadius: 1,
                                            offset: Offset(0, 2),
                                            spreadRadius: 0,
                                          ),
                                        ],
                                        // borderRadius: BorderRadius.circular(width * 0.03),
                                        border: Border.all(
                                          color: colorMainTheme, // Blue border color
                                          width: 1.5, // Border width
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(width *0.008),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/icons/exam_schedule.png",
                                              width: width * 0.0138,
                                              height: width * 0.0138,
                                            ),
                                            SizedBox(width: width * 0.015),
                                            Expanded(
                                              child: WantText(
                                                text: 'Quizzes  Schedule',
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w600,
                                                textColor: colorBlack,
                    
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: colorMainTheme,
                                              size: width * 0.013,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                    
                    
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => QuizzesResultScreen()));
                                    },
                                    child: Container(
                                      width: width,
                                      decoration: BoxDecoration(
                                        color: colorGrey,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(width*0.0083),
                                          bottomLeft: Radius.circular(width*0.0083),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: colorBoxshadow.withOpacity(0.2), // Light shadow
                                            blurRadius: 1, // Soft shadow effect
                                            offset: Offset(0, 2), // Shadow only at the bottom
                                            spreadRadius: 0, // No spread on sides
                                          ),
                                        ],
                                        // border: Border.all(
                                        //   color: colorMainTheme, // Blue border color
                                        //   width: 1.5, // Border width
                                        // ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(width *0.008),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/icons/report_card.png",
                                              width: width * 0.0138,
                                              height: width * 0.0138,
                                            ),
                                            SizedBox(width: width * 0.015),
                                            Expanded(
                                              child: WantText(
                                                text: 'Quizzes Result',
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w600,
                                                textColor: colorBlack,
                    
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: colorMainTheme,
                                              size: width * 0.013,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                    
                    
                            SizedBox(height: height*0.016),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isExpanded2 = !_isExpanded2;
                                });
                              },
                              child: Container(
                                width: width,
                                padding: EdgeInsets.all(width * 0.011,),
                    
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorBoxshadow.withOpacity(0.2), // Light shadow
                                      blurRadius: 1, // Soft shadow effect
                                      offset: Offset(0, 2), // Shadow only at the bottom
                                      spreadRadius: 0, // No spread on sides
                                    ),
                                  ],
                                  color: Colors.white,
                                  // borderRadius: BorderRadius.circular(width * 0.0083),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/divexam.png",
                                      width: width * 0.027,
                                      height: width * 0.027,
                                    ),
                                    SizedBox(width: width * 0.01),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          WantText(
                                            text: 'Weekly Test',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack,
                                          ),
                                          SizedBox(height: height * 0.006),
                                          WantText(
                                            text: 'Every Friday',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorDarkGreyText,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(_isExpanded2
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_right,
                                      color: colorMainTheme,
                                      size: width * 0.025,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            if (_isExpanded2)
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => TestScheduleScreen()));
                                    },
                                    child: Container(
                                      width: width,
                                      decoration: BoxDecoration(
                                        color: colorGrey,
                                        boxShadow: [
                                          BoxShadow(
                                            color: colorGrey.withOpacity(0.2),
                                            blurRadius: 1,
                                            offset: Offset(0, 2),
                                            spreadRadius: 0,
                                          ),
                                        ],
                                        // borderRadius: BorderRadius.circular(width * 0.03),
                                        border: Border.all(
                                          color: colorMainTheme, // Blue border color
                                          width: 1.5, // Border width
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(width *0.008),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/icons/exam_schedule.png",
                                              width: width * 0.0138,
                                              height: width * 0.0138,
                                            ),
                                            SizedBox(width: width * 0.015),
                                            Expanded(
                                              child: WantText(
                                                text: 'Test Schedule',
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w600,
                                                textColor: colorBlack,
                    
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: colorMainTheme,
                                              size: width * 0.013,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                    
                    
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => TestResultScreen()));
                                    },
                                    child: Container(
                                      width: width,
                                      decoration: BoxDecoration(
                                        color: colorGrey,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(width*0.0083),
                                          bottomLeft: Radius.circular(width*0.0083),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: colorBoxshadow.withOpacity(0.2), // Light shadow
                                            blurRadius: 1, // Soft shadow effect
                                            offset: Offset(0, 2), // Shadow only at the bottom
                                            spreadRadius: 0, // No spread on sides
                                          ),
                                        ],
                                        // border: Border.all(
                                        //   color: colorMainTheme, // Blue border color
                                        //   width: 1.5, // Border width
                                        // ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(width *0.008),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/icons/report_card.png",
                                              width: width * 0.0138,
                                              height: width * 0.0138,
                                            ),
                                            SizedBox(width: width * 0.015),
                                            Expanded(
                                              child: WantText(
                                                text: 'Test Result',
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w600,
                                                textColor: colorBlack,
                    
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: colorMainTheme,
                                              size: width * 0.013,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                    
                    
                            SizedBox(height: height*0.016),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isExpandedterm = !_isExpandedterm;
                                });
                              },
                              child: Container(
                                width: width,
                                padding: EdgeInsets.all(width * 0.011),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorBoxshadow.withOpacity(0.2),
                                      blurRadius: 1,
                                      offset: Offset(0, 2),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/termtest.png",
                                          width: width * 0.027,
                                          height: width * 0.027,
                                        ),
                                        SizedBox(width: width * 0.01),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                text: 'Term Test',
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w600,
                                                textColor: colorBlack,
                                              ),
                                              SizedBox(height: height * 0.006),
                                              WantText(
                                                text: 'Term Assessment',
                                                fontSize: width * 0.0083,
                                                fontWeight: FontWeight.w400,
                                                textColor: colorDarkGreyText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          _isExpandedterm
                                              ? Icons.keyboard_arrow_down
                                              : Icons.keyboard_arrow_right,
                                          color: colorMainTheme,
                                          size: width * 0.025,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            if (_isExpandedterm)
                              ListView.builder(
                                padding: EdgeInsets.all(0.0),
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: _categories.length,
                                itemBuilder: (context, index) {
                                  final category = _categories[index];
                                  return Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            category['isExpanded'] = !category['isExpanded'];
                                          });
                                        },
                                        child: Container(
                                          width: width,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(width*0.0083),
                                            border: Border.all(
                                              color: colorMainTheme,
                                              
                                              width: 1.5,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal:width *0.008,vertical: width*0.005),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    ImageIcon(
                                                      AssetImage(category["icon"]),
                                                      color: category["iconColor"],
                                                      size: width * 0.0138,
                                                    ),
                                                    SizedBox(width: width * 0.015),
                                                    WantText(
                                                      text: category["title"],
                                                      fontSize: width * 0.011,
                                                      fontWeight: FontWeight.w600,
                                                      textColor: colorBlack,
                                                    ),
                                                  ],
                                                ),
                                                Icon(
                                                  category['isExpanded']
                                                      ? Icons.keyboard_arrow_down
                                                      : Icons.keyboard_arrow_right,
                                                  color: colorMainTheme,
                                                  size: width * 0.025,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (category['isExpanded'])
                                        ListView.builder(
                                          padding: EdgeInsets.all(0.0),
                                          physics: const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: category['subItems'].length,
                                          itemBuilder: (context, subIndex) {
                                            final subItem = category['subItems'][subIndex];
                                            return GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => subItem['route']),
                                                );
                                              },
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                      color: colorGrey,
                                                      borderRadius: BorderRadius.only(
                                                        bottomRight: Radius.circular(width*0.0083),
                                                        bottomLeft: Radius.circular(width*0.0083),
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: colorBoxshadow.withOpacity(0.2), // Light shadow
                                                          blurRadius: 1, // Soft shadow effect
                                                          offset: Offset(0, 2), // Shadow only at the bottom
                                                          spreadRadius: 0, // No spread on sides
                                                        ),
                                                      ],
                                                      // border: Border.all(
                                                      //   color: colorMainTheme, // Blue border color
                                                      //   width: 1.5, // Border width
                                                      // ),
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.all(width *0.008),
                                                      child: Row(
                                                        children: [
                                                          ImageIcon(
                                                            AssetImage(subItem["icon"]),
                                                            color: subItem["iconColor"],
                                                            size: width * 0.0138,

                                                          ),
                                                          SizedBox(width: width * 0.015),
                                                          Expanded(
                                                            child: WantText(
                                                              text: subItem["title"],
                                                              fontSize: width * 0.011,
                                                              fontWeight: FontWeight.w600,
                                                              textColor: colorBlack,
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons.arrow_forward_ios,
                                                            color: colorMainTheme,
                                                            size: width * 0.013,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: height*0.004,),
                                                ],
                                              ),
                                            );
                                          },
                                        ),

                                    ],
                                  );
                                },
                              ),










                            SizedBox(height: height*0.016),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isExpanded4 = !_isExpanded4;
                                });
                              },
                              child: Container(
                                width: width,
                                padding: EdgeInsets.all(width * 0.011),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorBoxshadow.withOpacity(0.2),
                                      blurRadius: 1,
                                      offset: Offset(0, 2),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/yearly.png",
                                          width: width * 0.027,
                                          height: width * 0.027,
                                        ),
                                        SizedBox(width: width * 0.01),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                text: 'Yearly Exam',
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w600,
                                                textColor: colorBlack,
                                              ),
                                              SizedBox(height: height * 0.006),
                                              WantText(
                                                text: 'Semester Exam',
                                                fontSize: width * 0.0083,
                                                fontWeight: FontWeight.w400,
                                                textColor: colorDarkGreyText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Icon(
                                          _isExpanded4 ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
                                          color: colorMainTheme,
                                          size: width * 0.025,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            if (_isExpanded4)
                              ListView.builder(
                                padding: EdgeInsets.all(0.0),
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: _listName.length,
                                itemBuilder: (context, index) {
                                  final category = _listName[index];
                                  return Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            category['isExpanded4'] = !category['isExpanded4'];
                                          });
                                        },
                                        child: Container(
                                          width: width,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(width * 0.0083),
                                            border: Border.all(color: colorMainTheme, width: 1.5),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: width * 0.008, vertical: width * 0.005),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    ImageIcon(
                                                      AssetImage(category["icon"]),
                                                      color: category["iconColor"],
                                                      size: width * 0.0138,
                                                    ),
                                                    SizedBox(width: width * 0.015),
                                                    WantText(
                                                      text: category["title"],
                                                      fontSize: width * 0.011,
                                                      fontWeight: FontWeight.w600,
                                                      textColor: colorBlack,
                                                    ),
                                                  ],
                                                ),
                                                Icon(
                                                  category['isExpanded4'] ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
                                                  color: colorMainTheme,
                                                  size: width * 0.025,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (category['isExpanded4'])
                                        ListView.builder(
                                          padding: EdgeInsets.all(0.0),
                                          physics: const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: category['subItems'].length,
                                          itemBuilder: (context, subIndex) {
                                            final subItem = category['subItems'][subIndex];
                                            return GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => subItem['route']),
                                                );
                                              },
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: width,
                                                    decoration: BoxDecoration(
                                                      color: colorGrey,
                                                      borderRadius: BorderRadius.only(
                                                        bottomRight: Radius.circular(width*0.0083),
                                                        bottomLeft: Radius.circular(width*0.0083),
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: colorBoxshadow.withOpacity(0.2), // Light shadow
                                                          blurRadius: 1, // Soft shadow effect
                                                          offset: Offset(0, 2), // Shadow only at the bottom
                                                          spreadRadius: 0, // No spread on sides
                                                        ),
                                                      ],
                                                      // border: Border.all(
                                                      //   color: colorMainTheme, // Blue border color
                                                      //   width: 1.5, // Border width
                                                      // ),
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.all(width *0.008),
                                                      child: Row(
                                                        children: [
                                                          ImageIcon(
                                                            AssetImage(subItem["icon"]),
                                                            color: subItem["iconColor"],
                                                            size: width * 0.0138,

                                                          ),
                                                          SizedBox(width: width * 0.015),
                                                          Expanded(
                                                            child: WantText(
                                                              text: subItem["title"],
                                                              fontSize: width * 0.011,
                                                              fontWeight: FontWeight.w600,
                                                              textColor: colorBlack,
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons.arrow_forward_ios,
                                                            color: colorMainTheme,
                                                            size: width * 0.013,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: height*0.004,),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                    ],
                                  );
                                },
                              ),
                            SizedBox(height: height*0.22),
                    
                          ],
                        ),
                    
                    
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: width*0.004,),
            RecentActivityWidget(),
          ],
        ),
      ),
    );
  }
}

