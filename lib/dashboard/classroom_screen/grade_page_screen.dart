
import 'package:digi_school/exam_screen/weekly_test_widget/mathematics_screen.dart';
import 'package:digi_school/exam_screen/weekly_test_widget/reminders_widget.dart';
import 'package:digi_school/utils/custom_button.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';


class GradeScreen extends StatefulWidget {
  @override
  _GradeScreenState createState() => _GradeScreenState();
}

class _GradeScreenState extends State<GradeScreen> {

  final TextEditingController _feedbackController = TextEditingController();
  final TextEditingController _marksController = TextEditingController();

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
                                text: "Grade",
                                fontSize: width * 0.0166,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                          ],
                        ) ,
                      ),

                      SizedBox(height: height * 0.03),


                      Container(
                        width: width,
                        padding: EdgeInsets.all( width * 0.008),
                        decoration: BoxDecoration(
                          color: colorCustomButtonLabelWhite,
                          borderRadius: BorderRadius.circular(width*0.0083),

                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/roll6.png",
                              width: width * 0.025,
                              height: width * 0.025,
                            ),
                            SizedBox(width: width * 0.01),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(text: "Meera Reddy", fontSize: width*0.011, fontWeight: FontWeight.w600, textColor: colorBlack),

                                  WantText(text: "Roll no. - 6", fontSize: width*0.0097, fontWeight: FontWeight.w400, textColor: colorBlack),


                                ],
                              ),
                            ),
                            WantText(text: "Handed in", fontSize: width*0.007, fontWeight: FontWeight.w600, textColor: colorGreenCalendar)

                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Image.asset("assets/icons/pdfrecent.png",height: height * 0.028,
                            width: width * 0.013,),
                          SizedBox(width: width * 0.008),

                          WantText(text: 'Meera Reddy.pdf', fontSize: width*0.011, fontWeight: FontWeight.w600, textColor: colorBlack),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Center(
                        child: Image.asset(
                          "assets/images/pdfassign.png",width: width * 0.3,
                          height: width * 0.232,
                        ),
                      ),

                      SizedBox(height: height*0.03),
                      WantText(text: 'Private Comment', fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height*0.02),
                      Container(
                        width: width,
                        padding: EdgeInsets.all( width * 0.008),
                        decoration: BoxDecoration(
                          color: colorCustomButtonLabelWhite,
                          borderRadius: BorderRadius.circular(width*0.0083),

                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/principle.png",width: width * 0.02),
                            SizedBox(width: width*0.01),
                            Expanded(
                              child: TextField(
                                controller: _feedbackController,
                                maxLines: 3,
                                decoration:InputDecoration(
                                  hintText: 'Write feedback',
                                  hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: width*0.0097,),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height*0.02),

                      CustomButton(Width: width, onTap: (){}, label: "Send Feedback"),

                      SizedBox(height: height*0.02),

                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: height*0.05,
                              child: TextField(
                                controller: _marksController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: colorWhite,
                                  hintText: 'mark / 10',
                                  hintStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: width*0.0097,color: colorDarkGreyText),

                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: colorMainTheme),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: colorMainTheme),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  enabledBorder:OutlineInputBorder(
                                    borderSide: BorderSide(color: colorMainTheme),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: width*0.02),

                          CustomButton(Width: width*0.064, onTap: (){
                            Navigator.pop(context);
                          }, label: "Submit"),
                        ],
                      ),




                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          Container(
            height: height,
            width: width*0.24,
            padding: EdgeInsets.only(top: height*0.023),
            decoration: BoxDecoration(
              color: colorWhite,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WantText(
                    fontFamily: "Roboto",
                    text: "Grading Rules",
                    fontSize: width * 0.0125,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.008),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(77, 193, 82, 0.33), Colors.white],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    // borderRadius: BorderRadius.circular(8), // Rounded corners
                    border: Border(
                      left: BorderSide(color: Color.fromRGBO(77, 193, 82, 0.66), width: 4),
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(
                        width:width*0.18,
                        child: WantText(
                            fontFamily: "Roboto",
                            text: 'General Grading Guidelines \n✔ Be Objective & Fair – Use predefined rubrics and avoid bias.\n ✔ Timely Submission Consideration – Deduct marks for late submissions if applicable.\n ✔ Consistency in Evaluation – Follow the same criteria for all students.',
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w600,
                            textOverflow: TextOverflow.visible,
                            textColor: colorBlack),
                      ),

                    ],
                  ),
                ),




              ],
            ),
          ),
        ],
      ),
    );
  }
}
