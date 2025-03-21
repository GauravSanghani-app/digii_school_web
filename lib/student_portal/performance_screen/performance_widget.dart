import 'package:digi_school/utils/theam_manager.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/want_text.dart';

class PerformanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width*0.24,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(width*0.008),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: height * 0.02),
            WantText(
                fontFamily: "Roboto",
                text: "Class Participation",
                fontSize: width * 0.0125,
                fontWeight: FontWeight.w700,
                textColor: colorBlack),
            SizedBox(height: height * 0.02),
            Container(
              width: width,
              padding: EdgeInsets.all(width*0.008),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(77, 193, 82, 0.8), Color.fromRGBO(77, 193, 82, 0.1)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                // borderRadius: BorderRadius.circular(8), // Rounded corners
                border: Border(
                  left: BorderSide(color: Color.fromRGBO(77, 193, 82, 1), width: 4),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: width * 0.015,
                    width: width * 0.015,
                    child: Image.asset(
                      "assets/icons/question.png",
                    ),
                  ),
                  SizedBox(
                    width: width * 0.016,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      WantText(
                        text: 'Questions Asked',
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w600,
                        textColor: colorGreyTextLogIn,
                      ),
                      SizedBox(height: height*0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WantText(
                            text: 'Science',
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorDarkGreyText,
                          ),
                          SizedBox(width: width*0.07),
                          SizedBox(
                            width: width * 0.061,
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: colorLightCon),
                                color: colorLightCon,
                                borderRadius: BorderRadius.circular(
                                    width * 0.03),
                              ),
                              child: Center(
                                child: WantText(
                                  text: '15 questions',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorDarkGreen,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: height*0.015),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WantText(
                            text: 'Mathematics',
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorDarkGreyText,
                          ),
                          SizedBox(width: width*0.047),
                          SizedBox(
                            width: width * 0.061,
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: colorLightCon),
                                color: colorLightCon,
                                borderRadius: BorderRadius.circular(
                                    width * 0.03),
                              ),
                              child: Center(
                                child: WantText(
                                  text: '12 questions',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorDarkGreen,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: height * 0.02),
            WantText(
                fontFamily: "Roboto",
                text: "Group Activity ",
                fontSize: width * 0.0125,
                fontWeight: FontWeight.w700,
                textColor: colorBlack),
            SizedBox(height: height * 0.02),
            Container(
              width: width,
              padding: EdgeInsets.all(width*0.008),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(246, 173, 43, 0.1), Color.fromRGBO(246, 173, 43, 0.66)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                // borderRadius: BorderRadius.circular(8), // Rounded corners
                border: Border(
                  left: BorderSide(color: Color.fromRGBO(246, 173, 43, 1), width: 4),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WantText(
                      fontFamily: "Roboto",
                      text: "Science Project Team Lead",
                      fontSize: width * 0.0097,
                      fontWeight: FontWeight.w500,
                      textColor: colorGreyTextLogIn),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  WantText(
                      fontFamily: "Roboto",
                      text: "Led team of 4 students in environmental project",
                      fontSize: width * 0.0097,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkGreyText),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            WantText(
                fontFamily: "Roboto",
                text: "Extracurricular Activities ",
                fontSize: width * 0.0125,
                fontWeight: FontWeight.w700,
                textColor: colorBlack),
            SizedBox(height: height * 0.02),
            Container(
              width: width,
              padding: EdgeInsets.all(width*0.008),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(246, 173, 43, 0.66), Color.fromRGBO(144, 101, 25, 0.1)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                // borderRadius: BorderRadius.circular(8), // Rounded corners
                border: Border(
                  left: BorderSide(color: Color.fromRGBO(246, 173, 43, 1), width: 4),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: width * 0.0138,
                    width: width * 0.0138,
                    child: Image.asset(
                      "assets/icons/basketball.png",
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WantText(
                          fontFamily: "Roboto",
                          text: "Basketball Team",
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w500,
                          textColor: colorGreyTextLogIn),
                      SizedBox(
                        height: height * 0.013,
                      ),
                      WantText(
                          fontFamily: "Roboto",
                          text: "Team Captain",
                          fontSize: width * 0.0083,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              width: width,
              padding: EdgeInsets.all(width*0.008),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(137, 121, 255, 0.66), Color.fromRGBO(137, 121, 255, 0.1)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                // borderRadius: BorderRadius.circular(8), // Rounded corners
                border: Border(
                  left: BorderSide(color: Color.fromRGBO(137, 121, 255, 1), width: 4),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: width * 0.0138,
                    width: width * 0.0138,
                    child: Image.asset(
                      "assets/icons/orchestra.png",
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WantText(
                          fontFamily: "Roboto",
                          text: "School Orchestra",
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w500,
                          textColor: colorGreyTextLogIn),
                      SizedBox(
                        height: height * 0.013,
                      ),
                      WantText(
                          fontFamily: "Roboto",
                          text: "Violin Player",
                          fontSize: width * 0.0083,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),
                    ],
                  ),
                ],
              ),
            ),


            SizedBox(height: height * 0.02),
            WantText(
                fontFamily: "Roboto",
                text: "Teacher's Feedback",
                fontSize: width * 0.0125,
                fontWeight: FontWeight.w700,
                textColor: colorBlack),
            SizedBox(height: height * 0.02),

            Container(
              width: width,
              padding: EdgeInsets.all(width*0.008),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(43, 124, 246, 0.66), Color.fromRGBO(43, 124, 246, 0.1)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                // borderRadius: BorderRadius.circular(8), // Rounded corners
                border: Border(
                  left: BorderSide(color: Color.fromRGBO(43, 124, 246, 1), width: 4),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: width * 0.025,
                        width: width * 0.025,
                        child: Image.asset(
                          "assets/images/performancemrs.png",
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              fontFamily: "Roboto",
                              text: "Mrs. Anderson",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w500,
                              textColor: colorBlack),
                          SizedBox(height: height * 0.002),
                          WantText(
                              fontFamily: "Roboto",
                              text: "Mathematics Teacher",
                              fontSize: width * 0.0083,
                              fontWeight: FontWeight.w400,
                              textColor: colorDarkGreyText),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.015),
                  WantText(
                      textOverflow: TextOverflow.fade,
                      fontFamily: "Roboto",
                      text:
                      '"Annaya shows exceptional problem-solving skills\nand always participates actively in class \ndiscussions."',
                      fontSize: width * 0.0083,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkGreyText),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              width: width,
              padding: EdgeInsets.all(width*0.008),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(255, 182, 219, 0.66), Color.fromRGBO(223, 46, 167, 0.1)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                // borderRadius: BorderRadius.circular(8), // Rounded corners
                border: Border(
                  left: BorderSide(color: Color.fromRGBO(223, 46, 167, 1), width: 4),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: width * 0.025,
                        width: width * 0.025,
                        child: Image.asset(
                          "assets/images/personthomas.png",
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              fontFamily: "Roboto",
                              text: "Mr. Thompson",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w500,
                              textColor: colorBlack),
                          SizedBox(height: height * 0.002),
                          WantText(
                              fontFamily: "Roboto",
                              text: "Mathematics Teacher",
                              fontSize: width * 0.0083,
                              fontWeight: FontWeight.w400,
                              textColor: colorDarkGreyText),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.015),
                  WantText(
                      textOverflow: TextOverflow.fade,
                      fontFamily: "Roboto",
                      text:
                      '"Annaya shows exceptional problem-solving skills\nand always participates actively in class \ndiscussions."',
                      fontSize: width * 0.0083,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkGreyText),
                ],
              ),
            ),

            SizedBox(height: height*0.03),



          ],
        ),
      ),
    );
  }


}
