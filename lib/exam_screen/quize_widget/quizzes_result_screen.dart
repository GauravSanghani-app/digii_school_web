import 'package:digi_school/exam_screen/recent_activity_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';


class QuizzesResultScreen extends StatefulWidget {
  @override
  _QuizzesResultScreenState createState() => _QuizzesResultScreenState();
}

class _QuizzesResultScreenState extends State<QuizzesResultScreen> {



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
                                  text: "Quizzes Result",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),
                            ],
                          ) ,
                        ),

                        SizedBox(height: height * 0.023),
                        WantText(text: "Quizzes Result", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                        SizedBox(height: height * 0.02),




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
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [

                                      WantText(
                                          text: "Science Quiz",
                                          fontSize: width * 0.0125,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack),
                                      SizedBox(height: height * 0.005,),
                                      WantText(
                                          text: "March 15, 2025",
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width*0.043,
                                    height: width*0.043,
                                    child: Container(
                                      padding: EdgeInsets.all(width * 0.005),
                                      decoration: BoxDecoration(
                                        color: colorBoxBackground,
                                        borderRadius: BorderRadius.circular(999),
                                      ),
                                      child: Center(
                                        child: WantText(
                                            text: "85%",
                                            fontSize: width * 0.0166,
                                            fontWeight: FontWeight.w700,
                                            textColor: colorCustomButton),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: height * 0.016,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  WantText(
                                      text: "Total Questions",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                  WantText(
                                      text: "20",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack),

                                ],
                              ),
                              SizedBox(height: height * 0.014,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  WantText(
                                      text: "Correct Answers",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                  WantText(
                                      text: "17",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack),

                                ],
                              ),
                              SizedBox(height: height * 0.014,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  WantText(
                                      text: "Wrong  Answers",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                  WantText(
                                      text: "3",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack),

                                ],
                              ),
                              SizedBox(height: height * 0.014,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  WantText(
                                      text: "Total Time",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                  WantText(
                                      text: "30 min",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack),

                                ],
                              ),

                            ],
                          ),

                        ),

                        SizedBox(height: height * 0.023,),

                        WantText(
                            text: "Questions Overview",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),

                        SizedBox(height: height * 0.023,),


                        Center(child: Image.asset("assets/images/quizeresult.png",width: width*0.208)),
                        SizedBox(height: height * 0.023,),

                        WantText(
                            text: "Instructions",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),

                        SizedBox(height: height * 0.023,),
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
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/quizeerror.png',width: width * 0.011,height: width * 0.011,),
                                  SizedBox(width: width * 0.016,),
                                  SizedBox(
                                    width: width*0.25,
                                    child: WantText(
                                      text: "Review incorrect answers with your child to improve understanding.",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText,
                                      textOverflow: TextOverflow.visible,),
                                  ),
                                ],
                              ),

                              SizedBox(height: height * 0.012,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/quizeerror.png',width: width * 0.011,height: width * 0.011,),
                                  SizedBox(width: width * 0.016,),
                                  SizedBox(
                                    width: width*0.25,
                                    child: WantText(
                                      text: "Practice similar questions for better performance.",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText,
                                      textOverflow: TextOverflow.visible,),
                                  ),
                                ],
                              ),

                              SizedBox(height: height * 0.012,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/quizeerror.png',width: width * 0.011,height: width * 0.011,),
                                  SizedBox(width: width * 0.016,),
                                  SizedBox(
                                    width: width*0.25,
                                    child: WantText(
                                      text: "Next quiz will be available in 7 days.",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText,
                                      textOverflow: TextOverflow.visible,),
                                  ),
                                ],
                              ),




                            ],
                          ),

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
