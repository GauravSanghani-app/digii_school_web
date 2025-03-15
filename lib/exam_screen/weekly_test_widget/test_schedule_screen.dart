
import 'package:digi_school/exam_screen/weekly_test_widget/reminders_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:google_fonts/google_fonts.dart';


class TestScheduleScreen extends StatefulWidget {
  @override
  _TestScheduleScreenState createState() => _TestScheduleScreenState();
}

class _TestScheduleScreenState extends State<TestScheduleScreen> {


  final List<Map<String, dynamic>> _categories = [
    {
      "subject":"Mathematics",
      "topic": "Algebra Basics",
      "date": "7th March 2025",
      "time": "09:00 AM",
      "icon": "assets/icons/calculator.png",
      "iconColor": colorMainTheme,
    },
    {
      "subject": "Physics",
      "topic": "Chemical Reactions",
      "date": "14th March 2025",
      "time": "09:00 AM",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorGreenCalendar,
    },
    {
      "subject": "English",
      "topic": "Grammar",
      "date": "14th March 2025",
      "time": "10:00 AM",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorPurple,
    },
    {
      "subject": "Chemistry",
      "topic": "Solid State",
      "date": "21st March 2025",
      "time": "10:00 AM",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorNotic,
    },
    {
      "subject": "Biology",
      "topic": "Genetics and Evolution",
      "date": "28th March 2025",
      "time": "10:00 AM",
      "icon": "assets/icons/subject6.png",
      "iconColor": colorYellow,
    },
    {
      "subject": "Language",
      "topic": "Language and Communication",
      "date": "28th March 2025",
      "time": "10:00 AM",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorOrange,
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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

                      Container(
                        width: width,
                        padding: EdgeInsets.all(width *0.005),
                        decoration: BoxDecoration(
                          color: colorHeaderCon,
                          borderRadius: BorderRadius.circular(width*0.022),
                        ),
                        child:Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back_ios,color: colorBlack,size: height*0.026)),
                            SizedBox(width: width*0.27,),
                            WantText(
                                text: "Test Schedule",
                                fontSize: width * 0.0166,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                          ],
                        ) ,
                      ),

                      SizedBox(height: height * 0.02),


                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WantText(
                                  fontFamily: "Roboto",
                                  text: "Week of",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorDarkGreyText),
                              SizedBox(height: height*0.006,),
                              WantText(
                                  fontFamily: "Roboto",
                                  text: "March 7 - 13, 2025",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),


                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(width*0.005),
                            decoration: BoxDecoration(

                              color: colorBoxBackground,
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: Center(
                              child: Text(
                                'Friday Tests',
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    fontSize: width * 0.0083,
                                    color: colorCustomButton,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height*0.006,),
                      WantText(
                          fontFamily: "Roboto",
                          text: "Duration: 45 Minutes",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w600,
                          textColor: colorBlack),

                      SizedBox(height: height*0.02,),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(), // Disable inner scrolling
                        shrinkWrap: true, // Shrinks the ListView to fit its content
                        itemCount: _categories.length,
                        itemBuilder: (context, index) {
                          final category = _categories[index];

                          return Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(width * 0.009),
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
                                  borderRadius: BorderRadius.circular(width * 0.0083),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Icon
                                    ImageIcon(
                                      AssetImage(category["icon"]),
                                      color: category["iconColor"],
                                      size: width * 0.015,
                                    ),
                                    SizedBox(width: width * 0.01),
                                    // Subject, Topic, Date
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              WantText(
                                                  fontFamily: "Roboto",
                                                  text: category["subject"],
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w600,
                                                  textColor: colorBlack),
                                              WantText(
                                                  fontFamily: "Roboto",
                                                  text: category["time"],
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorDarkGreyText),
                                            ],
                                          ),

                                          WantText(
                                              fontFamily: "Roboto",
                                              text: "Topic: ${category["topic"]}",
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorDarkGreyText),
                                          SizedBox(height: height * 0.005),
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: "Date: ${category["date"]}",
                                              fontSize: width * 0.0083,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorDarkGreyText),
                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),
                              SizedBox(height: width * 0.016),
                            ],
                          );
                        },
                      ),



                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          RemindersWidget(),
        ],
      ),
    );
  }



}
