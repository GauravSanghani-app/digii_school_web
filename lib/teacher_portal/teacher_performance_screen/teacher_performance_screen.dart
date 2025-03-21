
import 'package:digi_school/dashboard/home_screen/notic_widget.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TeacherPerformanceScreen extends StatefulWidget {
  @override
  _TeacherPerformanceScreenState createState() => _TeacherPerformanceScreenState();
}

class _TeacherPerformanceScreenState extends State<TeacherPerformanceScreen> {
  final List<Map<String, dynamic>> subjects = [
    {'name': 'Mathematics', 'percentage': 75},
    {'name': 'Science', 'percentage': 60},
    {'name': 'English', 'percentage': 85},
  ];

  final List<Map<String, dynamic>> students = [
    {
      'name': 'Alex Johnson',
      'issue': 'Low Performance',
      'image': 'assets/images/parentimag.png',
      'color': colorRedText
    },
    {
      'name': 'Sarah Williams',
      'issue': 'Missing Work',
      'image': 'assets/images/teacherimg.png',
      'color': colorOrange
    },
    {
      'name': 'Michael Brown',
      'issue': 'Low Attendance',
      'image': 'assets/images/performancemrs.png',
      'color': colorYellow
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
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      padding: EdgeInsets.all(width*0.007),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "Low Performance",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "12",
                                        fontSize: width * 0.0138,
                                        fontWeight: FontWeight.w700,
                                        textColor: colorRedText),
                                  ],
                                ),
                                SizedBox(width: width*0.013,),
                                Image.asset('assets/images/teacherPerfor1.png',width: width*0.027,),
                              ],
                            ),
                          ),
                          Container(width: 1, height: width * 0.045, color: colorGreyBorder),

                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "Missing Work",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "8",
                                        fontSize: width * 0.0138,
                                        fontWeight: FontWeight.w700,
                                        textColor: colorOrange),
                                  ],
                                ),
                                SizedBox(width: width*0.013,),
                                Image.asset('assets/images/teacherPerfor2.png',width: width*0.027,),
                              ],
                            ),
                          ),
                          Container(width: 1, height: width * 0.045, color: colorGreyBorder),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "Low Performance",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "15",
                                        fontSize: width * 0.0138,
                                        fontWeight: FontWeight.w700,
                                        textColor: colorYellow),
                                  ],
                                ),
                                SizedBox(width: width*0.013,),
                                Image.asset('assets/images/teacherPerfor3.png',width: width*0.027,),
                              ],
                            ),
                          ),
                          Container(width: 1, height: width * 0.045, color: colorGreyBorder),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "Behavior Issues",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "5",
                                        fontSize: width * 0.0138,
                                        fontWeight: FontWeight.w700,
                                        textColor: colorPurple),
                                  ],
                                ),
                                SizedBox(width: width*0.013,),
                                Image.asset('assets/images/teacherPerfor4.png',width: width*0.027,),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
                    SizedBox(height: height*0.02),


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
                              text: "Students Requiring Attention",
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),
                          SizedBox(height: height*0.016),
                          Divider(color: colorGreyBorder, thickness: 1),
                          SizedBox(height: height*0.016),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: students.length,
                            itemBuilder: (context, index) {
                              final student = students[index];
                              return Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 24,
                                            backgroundImage: AssetImage(student['image']),
                                          ),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              WantText(
                                                  text: student['name'],
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w600,
                                                  textColor: colorBlack),
                                              WantText(
                                                  text: student['issue'],
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: student['color']),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, color:colorMainTheme, size: width*0.0097),
                                    ],
                                  ),
                                  SizedBox(height: height*0.012),

                                  if (index != students.length - 1)
                                    Divider(color: colorGreyBorder, thickness: 1),                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height*0.02),


                    Container(
                      width: width,
                      padding: EdgeInsets.all(width*0.007),
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
                          SizedBox(height: height*0.016),
                          Divider(color: colorGreyBorder, thickness: 1),
                          SizedBox(height: height*0.016),

                          ...subjects.map((subject) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                WantText(
                                    text: subject['name'],
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorBlack),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                        child: LinearProgressIndicator(
                                          value: subject['percentage'] / 100,
                                          backgroundColor: Colors.grey[300],
                                          valueColor: AlwaysStoppedAnimation<Color>(colorCustomButton),
                                          minHeight: 8,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),

                                    WantText(
                                        text: '${subject['percentage']}%',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorCustomButton),
                                  ],
                                ),

                                SizedBox(height: height*0.016,)
                              ],
                            );
                          }).toList(),
                        ],
                      ),
                    ),
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
                    text: "Upcoming Exams",
                    fontSize: width * 0.0125,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack),
                SizedBox(height: height * 0.005),

                Divider(color: colorDivider,thickness: 1,),
                SizedBox(height: height * 0.005),

                Container(
                  width: width,
                  padding: EdgeInsets.all( width*0.008),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(239, 246, 255, 1),
                    borderRadius: BorderRadius.circular(width*0.008),

                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/teacherPer1.png',width: width*0.027,),
                      SizedBox(width: width * 0.010),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WantText(
                                text: "Mathematics",
                                fontSize: width * 0.011,
                                textOverflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack),
                            SizedBox(height: height*0.005,),
                            WantText(
                                text: "March 15, 2025",
                                fontSize: width * 0.0097,
                                textOverflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  width: width,
                  padding: EdgeInsets.all( width*0.008),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 253, 244, 1),
                    borderRadius: BorderRadius.circular(width*0.008),

                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/teacherPer2.png',width: width*0.027,),
                      SizedBox(width: width * 0.010),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WantText(
                                text: "Science",
                                fontSize: width * 0.011,
                                textOverflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack),
                            SizedBox(height: height*0.005,),
                            WantText(
                                text: "March 18, 2025",
                                fontSize: width * 0.0097,
                                textOverflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  width: width,
                  padding: EdgeInsets.all( width*0.008),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 245, 255, 1),
                    borderRadius: BorderRadius.circular(width*0.008),

                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/teacherPer3.png',width: width*0.027,),
                      SizedBox(width: width * 0.010),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WantText(
                                text: "English",
                                fontSize: width * 0.011,
                                textOverflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack),
                            SizedBox(height: height*0.005,),
                            WantText(
                                text: "March 20, 2025",
                                fontSize: width * 0.0097,
                                textOverflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


                SizedBox(height: height * 0.04),
                WantText(
                    text: "Recent Behavior Issues",
                    fontSize: width * 0.0125,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack),
                SizedBox(height: height * 0.005),

                Divider(color: colorDivider,thickness: 1,),
                SizedBox(height: height * 0.005),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              text: "David Clark",
                              fontSize: width * 0.011,
                              textOverflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w600,
                              textColor: colorBlack),
                          SizedBox(height: height*0.007,),
                          WantText(
                              text: "Disrupting class during lesson",
                              fontSize: width * 0.0097,
                              textOverflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                        ],
                      ),
                    ),
                    WantText(
                        text: "Today",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textColor: colorDarkGreyText),
                  ],
                ),
                SizedBox(height: height * 0.028),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              text: "Emma Wilson",
                              fontSize: width * 0.011,
                              textOverflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w600,
                              textColor: colorBlack),
                          SizedBox(height: height*0.007,),
                          WantText(
                              text: "Late submission of assignments",
                              fontSize: width * 0.0097,
                              textOverflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                        ],
                      ),
                    ),
                    WantText(
                        text: "Yesterday",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textColor: colorDarkGreyText),
                  ],
                ),
                SizedBox(height: height * 0.04),
                WantText(
                    text: "Assignment submitted",
                    fontSize: width * 0.0125,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack),
                SizedBox(height: height * 0.005),

                Divider(color: colorDivider,thickness: 1,),
                SizedBox(height: height * 0.005),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              text: "Emma Wilson",
                              fontSize: width * 0.011,
                              textOverflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w600,
                              textColor: colorBlack),
                          SizedBox(height: height*0.007,),
                          WantText(
                              text: "10.00pm",
                              fontSize: width * 0.0097,
                              textOverflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                        ],
                      ),
                    ),
                    WantText(
                        text: "Yesterday",
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
    );
  }
}

