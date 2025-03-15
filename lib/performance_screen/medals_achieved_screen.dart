import 'package:digi_school/performance_screen/performance_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';


class MedalsAchievedScreen extends StatefulWidget {
  @override
  _MedalsAchievedScreenState createState() => _MedalsAchievedScreenState();
}

class _MedalsAchievedScreenState extends State<MedalsAchievedScreen> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


      body: Expanded(
        child: Row(
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
                                  text: "Medals Achieved",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),
                            ],
                          ) ,
                        ),

                        SizedBox(height: height * 0.03),




                        Container(
                          width: width,
                          padding: EdgeInsets.all(width *0.005),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            // borderRadius: BorderRadius.circular(width *0.0083),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: width * 0.0138,
                                width: width * 0.0138,
                                child: Image.asset("assets/images/medals1.png"),
                              ),
                              SizedBox(width: width * 0.015),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width * 0.585,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            text: 'Homework Hero',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Achieved',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorGreenCalendar),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.012),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Completed all assignments this week',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.016),

                        Container(
                          width: width,
                          padding: EdgeInsets.all(width *0.005),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            // borderRadius: BorderRadius.circular(width *0.0083),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: width * 0.0138,
                                width: width * 0.0138,
                                child: Image.asset("assets/images/medals2.png"),
                              ),
                              SizedBox(width: width * 0.015),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width * 0.585,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Academic Excellence',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Achieved',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorGreenCalendar),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.012),
                                  SizedBox(
                                    width: width *0.58,
                                    child: WantText(
                                        textOverflow: TextOverflow.fade,
                                        fontFamily: "Roboto",
                                        text:
                                        'Demonstrated academic excellence through consistent high performance,dedication, and mastery across educational endeavors.',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.016),

                        Container(
                          width: width,
                          padding: EdgeInsets.all(width *0.005),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            // borderRadius: BorderRadius.circular(width *0.0083),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: width * 0.0138,
                                width: width * 0.0138,
                                child: Image.asset("assets/images/medals3.png"),
                              ),
                              SizedBox(width: width * 0.015),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width * 0.585,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Punctual Performer',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Achieved',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorGreenCalendar),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.012),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Attend all classes  in a week',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.016),

                        Container(
                          width: width,
                          padding: EdgeInsets.all(width *0.005),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            // borderRadius: BorderRadius.circular(width *0.0083),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: width * 0.0138,
                                width: width * 0.0138,
                                child: Image.asset("assets/images/medals4.png"),
                              ),
                              SizedBox(width: width * 0.015),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width * 0.585,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Skill Starter',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Unlocked',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorYellow),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.012),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Score 70% or higher on 3 quizzes',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.016),

                        Container(
                          width: width,
                          padding: EdgeInsets.all(width *0.005),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            // borderRadius: BorderRadius.circular(width *0.0083),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: width * 0.0138,
                                width: width * 0.0138,
                                child: Image.asset("assets/images/medals5.png"),
                              ),
                              SizedBox(width: width * 0.015),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width * 0.585,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Top Scorer',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Locked',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorMaroonText),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.012),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Achieve 90% or higher in a major test.',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.016),

                        Container(
                          width: width,
                          padding: EdgeInsets.all(width *0.005),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            // borderRadius: BorderRadius.circular(width *0.0083),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: width * 0.0138,
                                width: width * 0.0138,
                                child: Image.asset("assets/images/medals6.png"),
                              ),
                              SizedBox(width: width * 0.015),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width * 0.585,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Class Contributor',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Locked',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorMaroonText),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.012),
                                  SizedBox(
                                    width: width *0.58,
                                    child: WantText(
                                        textOverflow: TextOverflow.fade,
                                        fontFamily: "Roboto",
                                        text:
                                        'Participate actively in class discussions  5 times.',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.016),

                        Container(
                          width: width,
                          padding: EdgeInsets.all(width *0.005),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            // borderRadius: BorderRadius.circular(width *0.0083),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: width * 0.0138,
                                width: width * 0.0138,
                                child: Image.asset("assets/images/medals7.png"),
                              ),
                              SizedBox(width: width * 0.015),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width * 0.585,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Attendance  Ace',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Locked',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorMaroonText),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.012),
                                  SizedBox(
                                    width: width *0.58,
                                    child: WantText(
                                        textOverflow: TextOverflow.fade,
                                        fontFamily: "Roboto",
                                        text:
                                        'Achieve 100% attendance for a month.',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.16),





                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: width*0.004,),
            PerformanceWidget(),
          ],
        ),
      ),
    );
  }
}
