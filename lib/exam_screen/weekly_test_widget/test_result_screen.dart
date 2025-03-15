
import 'package:digi_school/exam_screen/weekly_test_widget/mathematics_screen.dart';
import 'package:digi_school/exam_screen/weekly_test_widget/reminders_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';


class TestResultScreen extends StatefulWidget {
  @override
  _TestResultScreenState createState() => _TestResultScreenState();
}

class _TestResultScreenState extends State<TestResultScreen> {

  final List<Map<String, dynamic>> _categories = [
    {
      "subject":"Mathematics",
      "icon": "assets/icons/calculator.png",
      "iconColor": colorMainTheme,
    },
    {
      "subject": "Physics",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorGreenCalendar,
    },
    {
      "subject": "English",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorPurple,
    },
    {
      "subject": "Chemistry",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorNotic,
    },
    {
      "subject": "Biology",
      "icon": "assets/icons/subject6.png",
      "iconColor": colorEvent,
    },
    {
      "subject": "Language",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorOrange,
    },
  ];

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
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
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
                                text: "Test Result",
                                fontSize: width * 0.0166,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                          ],
                        ) ,
                      ),

                      SizedBox(height: height * 0.03),



                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(), // Disable inner scrolling
                        shrinkWrap: true, // Shrinks the ListView to fit its content
                        itemCount: _categories.length,
                        itemBuilder: (context, index) {
                          final category = _categories[index];

                          return GestureDetector(
                            onTap: () {
                              if (category["subject"] == "Mathematics") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MathematicsScreen()),
                                );
                              }
                            },
                            child: Column(
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
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          ImageIcon(
                                            AssetImage(category["icon"]),
                                            color: category["iconColor"],
                                            size: width * 0.018,
                                          ),
                                          SizedBox(width: width * 0.01),
                                          // Subject, Topic, Date
                                          WantText(
                                              fontFamily: "Roboto",
                                              text: category["subject"],
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w600,
                                              textColor: colorBlack),


                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, size: width * 0.013,color: colorMainTheme,),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.016),
                              ],
                            ),
                          );
                        },
                      ),

                      SizedBox(height: height * 0.36),



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
