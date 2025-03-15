
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/material.dart';


class AlgebraAssignmentScreen extends StatefulWidget {
  const AlgebraAssignmentScreen({super.key});

  @override
  State<AlgebraAssignmentScreen> createState() => _AlgebraAssignmentScreenState();
}

class _AlgebraAssignmentScreenState extends State<AlgebraAssignmentScreen> {



  String _assignmentToDisplay = 'instructions';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: colorWhite,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(width*0.011),
            child:
            Flexible(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    width: width*0.665,
                    decoration: BoxDecoration(
                      color: colorBox,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.009),
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
                                    text: "Assignment ",
                                    fontSize: width * 0.0166,
                                    fontWeight: FontWeight.w700,
                                    textColor: colorBlack),
                              ],
                            ) ,
                          ),


                          SizedBox(height: height * 0.016),
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => setState(
                                      () => _assignmentToDisplay = 'instructions',
                                ),
                                child: Container(
                                  width: width * 0.312,
                                  height: width * 0.025,
                                  decoration: BoxDecoration(
                                    color: _assignmentToDisplay == 'instructions'
                                        ? colorMainTheme
                                        : colorWhite,
                                    borderRadius:
                                    BorderRadius.circular(width * 2.56),
                                  ),
                                  child: Center(
                                    child: WantText(
                                      text: 'Instructions',
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      textColor: _assignmentToDisplay == 'instructions'
                                          ? colorBlack
                                          : colorBlack,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => setState(
                                      () => _assignmentToDisplay = 'studentwork',
                                ),
                                child: Container(
                                  width: width * 0.312,
                                  height: width * 0.025,
                                  decoration: BoxDecoration(
                                    color: _assignmentToDisplay == 'studentwork'
                                        ? colorMainTheme
                                        : colorWhite,
                                    borderRadius:
                                    BorderRadius.circular(width * 2.56),
                                  ),
                                  child: Center(
                                    child: WantText(
                                      text: 'Student Work',
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      textColor: _assignmentToDisplay == 'studentwork'
                                          ? colorBlack
                                          : colorBlack,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.016),
                          Expanded(
                            child: SingleChildScrollView(
                              child: _assignmentToDisplay == "instructions"
                                  ? InstructionClass()
                                  : StudentClass(),
                            ),
                          ),



                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

          ),
          SizedBox(width: width*0.004,),
          Container(
            height: height,
            width: width * 0.24,
            padding: EdgeInsets.only(top: height * 0.023),
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

                // Show this Container only when Instructions are selected
                if (_assignmentToDisplay == 'instructions')
                  Container(
                    width: width,
                    padding: EdgeInsets.all(width * 0.008),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(77, 193, 82, 0.33), Colors.white],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      border: Border(
                        left: BorderSide(
                            color: Color.fromRGBO(77, 193, 82, 0.66), width: 4),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.18,
                          child: WantText(
                              fontFamily: "Roboto",
                              text:
                              'Late Submission Policy \n⏰ 1 Day Late – Deduct 5% of total marks\n ⏰ 2-3 Days Late – Deduct 10% of total marks\n ⏰ More than 3 Days Late – Zero unless approved by admin',
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w600,
                              textOverflow: TextOverflow.visible,
                              textColor: colorBlack),
                        ),
                      ],
                    ),
                  ),

                // Show this Container only when Student Work is selected
                if (_assignmentToDisplay == 'studentwork')
                  Container(
                    width: width,
                    padding: EdgeInsets.all(width * 0.008),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(77, 193, 82, 0.33), Colors.white],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      border: Border(
                        left: BorderSide(
                            color: Color.fromRGBO(77, 193, 82, 0.66), width: 4),
                      ),
                    ),
                    child: SizedBox(
                      width: width * 0.18,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: "⚠ Plagiarism Policy\n\n"), // Title

                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle, // Align inline
                              child: Container(
                                width: 20, // Size of the bullet
                                height: 20,
                                margin: EdgeInsets.only(right: 6), // Space after bullet
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red, // Red bullet
                                ),
                              ),
                            ),
                            TextSpan(text: " 20%+ Plagiarism – Deduction or rework required\n\n"),

                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(right: 6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            TextSpan(text: " Copied Work from Peers – Both students receive zero unless justified\n\n"),

                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(right: 6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            TextSpan(text: " AI-Generated or Unoriginal Work – Needs proper verification"),
                          ],
                        ),
                      )


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



class InstructionClass extends StatefulWidget {
  const InstructionClass({super.key});

  @override
  State<InstructionClass> createState() => _InstructionClassState();
}

class _InstructionClassState extends State<InstructionClass> {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        WantText(
            text: "Pending Evaluations",
            fontSize: width * 0.0125,
            fontWeight: FontWeight.w700,
            textColor: colorBlack),
        SizedBox(height: height * 0.02),
        Container(
          width: width,
          padding: EdgeInsets.all(width *0.008),
          decoration: BoxDecoration(
            color: colorHeaderCon,
            borderRadius: BorderRadius.circular(width*0.0083),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: width * 0.035),
              WantText(
                  text: 'Algebra Practice: \nQuadratic Equations',
                  fontSize: width * 0.0138,
                  fontWeight: FontWeight.w600,
                  textColor: colorBlack),
              SizedBox(height: height*0.016),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: width * 0.012,
                        width: width * 0.0097,
                        child: Image.asset("assets/icons/Frame.png"),
                      ),

                      SizedBox(width: width*0.006),
                      WantText(
                          text: 'Mrs. Mrunal Patel',
                          fontSize: width * 0.0083,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: width * 0.0097,
                        width: width * 0.0097,
                        child: Image.asset("assets/icons/time.png"),
                      ),

                      SizedBox(width: width*0.006),
                      WantText(
                          text: 'Due Tomorrow, 3:00 PM',
                          fontSize: width * 0.0083,
                          fontWeight: FontWeight.w400,
                          textColor: colorPinkText),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
        SizedBox(height: height*0.02),
        WantText(
            text: "Instructions",
            fontSize: width * 0.0125,
            fontWeight: FontWeight.w700,
            textColor: colorBlack),
        SizedBox(height: height * 0.02),
        Container(
          width: width,
          padding: EdgeInsets.all(width *0.008),
          decoration: BoxDecoration(
            color: colorHeaderCon,
            borderRadius: BorderRadius.circular(width*0.0083),
          ),
          child: WantText(
              textOverflow: TextOverflow.visible,
              text: 'Complete exercises 1-10 from Chapter 5. Show all your work and steps clearly. Focus on solving quadratic equations using different methods:factoring, completing the square, and quadraticformula.',
              fontSize: width * 0.0097,
              fontWeight: FontWeight.w400,
              textColor: colorBlack),
        ),

        SizedBox(height: height * 0.02),
        Container(
          width: width,
          padding: EdgeInsets.all(width *0.008),
          decoration: BoxDecoration(
            color: colorHeaderCon,
            borderRadius: BorderRadius.circular(width*0.0083),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: width * 0.0138,
                child: Image.asset("assets/icons/pdfrecent.png"),
              ),
              SizedBox(width: width * 0.01),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WantText(
                      text: 'Chapter 5 - Calculus.pdf',
                      fontSize: width * 0.011,
                      fontWeight: FontWeight.w600,
                      textColor: colorBlack,  // Prevent overflow
                    ),
                    SizedBox(height: height * 0.003),
                    WantText(
                      text: '2.3 MB',
                      fontSize: width * 0.0083,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkGreyText,
                    ),
                  ],
                ),
              ),

              SizedBox(width: width * 0.02), // Adjust spacing

              SizedBox(
                height: height * 0.018,
                width: width * 0.07,
                child: Image.asset("assets/icons/buttondown.png"),
              ),
            ],
          ),
        ),

        SizedBox(height: height*0.023),
        WantText(
            text: "Teacher Feedback",
            fontSize: width * 0.0125,
            fontWeight: FontWeight.w700,
            textColor: colorBlack),
        SizedBox(height: height * 0.02),

        Container(
          width: width,
          padding: EdgeInsets.all(width *0.008),
          decoration: BoxDecoration(
            color: colorHeaderCon,
            borderRadius: BorderRadius.circular(width*0.0083),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Image.asset(
                "assets/images/principle.png",width: width * 0.02),
              SizedBox(width: width * 0.01),
              WantText(
                  text: "Share Something with your class",
                  fontSize: width * 0.0097,
                  fontWeight: FontWeight.w400,
                  textColor: colorDarkGreyText),
            ],
          ),
        ),
        SizedBox(height: height*0.02),
        CustomButton(Width: width, onTap: (){}, label: "Update"),
      ],
    );
  }
}





class StudentClass extends StatefulWidget {
  const StudentClass({super.key});

  @override
  State<StudentClass> createState() => _StudentClassState();
}

class _StudentClassState extends State<StudentClass> {
  final List<Map<String, dynamic>> students = [
    {"name": "Aarav Sharma", "roll": 1, "status": "Submitted", "score": null, "avatar": "assets/images/boy.png"},
    {"name": "Ananya Iyer", "roll": 2, "status": "Submitted", "score": null, "avatar": "assets/images/person.png"},
    {"name": "Arjun Malhotra", "roll": 3, "status": "Submitted", "score": null, "avatar": "assets/images/roll3.png"},
    {"name": "Ayaan Qureshi", "roll": 4, "status": "Submitted", "score": null, "avatar": "assets/images/boy.png"},
    {"name": "Aditya Rao", "roll": 1, "status": "Submitted", "score": null, "avatar": "assets/images/roll9.png"},
    {"name": "Dev Patel", "roll": 5, "status": "Pending", "score": null, "avatar": "assets/images/roll5.png"},
    {"name": "Kavya Iyer", "roll": 8, "status": "Submitted", "score": null, "avatar": "assets/images/roll10.png"},
    {"name": "Manya Gupta", "roll": 8, "status": "Submitted", "score": null, "avatar": "assets/images/roll11.png"},
    {"name": "Meera Reddy", "roll": 6, "status": "Submitted", "score": null, "avatar": "assets/images/roll6.png"},
    {"name": "Mihir Joshi", "roll": 7, "status": "Submitted", "score": null, "avatar": "assets/images/roll7.png"},
    {"name": "Priya Nair", "roll": 8, "status": "Submitted", "score": null, "avatar": "assets/images/roll8.png"},
  ];


  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: width,
            padding: EdgeInsets.all(width *0.008),
            decoration: BoxDecoration(
              color: colorHeaderCon,
              borderRadius: BorderRadius.circular(width*0.0083),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Column(
                  children: [
                    WantText(text: "14", fontSize: width*0.022, fontWeight: FontWeight.w500, textColor: colorGreenCalendar),

                    WantText(text: "Handed in", fontSize: width*0.007, fontWeight: FontWeight.w400, textColor: colorDarkGreyText)
                  ],
                ),
                Container(height: height*0.057, width: 2, color: colorBlack),

                Column(
                  children: [
                    WantText(text: "6", fontSize: width*0.022, fontWeight: FontWeight.w500, textColor: colorPinkText),

                    WantText(text: "Assigned", fontSize: width*0.007, fontWeight: FontWeight.w400, textColor: colorDarkGreyText)
                  ],
                )
              ],
            ),
          ),

          SizedBox(height: height*0.02),
          Row(
            children: [
              WantText(text: "Submission closed on 5 Dec 2024, 23:59", fontSize: width*0.0097, fontWeight: FontWeight.w600, textColor: colorDarkGreyText),
              SizedBox(width: width*0.01),
              Column(
                children: [
                  Image.asset("assets/images/chatedit.png",
                      width: width * 0.01, height: width * 0.01),
                  WantText(
                    text: "Edit",
                    fontSize: width * 0.007,
                    fontWeight: FontWeight.w500,
                    textColor: colorMainTheme,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: height*0.02),

          ListView.builder(
            padding: EdgeInsets.all(0.0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];
              bool isRemaining = student["status"] == "Remaining";

              return Column(
                children: [
                  Container(
                    width: width,
                    padding: EdgeInsets.all(width *0.008),
                    decoration: BoxDecoration(
                      color: colorHeaderCon,
                      borderRadius: BorderRadius.circular(width*0.0083),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          student["avatar"],
                          width: width * 0.025,
                          height: width * 0.025,
                        ),
                        SizedBox(width: width * 0.01),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WantText(text: student["name"], fontSize: width*0.011, fontWeight: FontWeight.w600, textColor: colorBlack),

                              WantText(text: "Roll no. - ${student["roll"]}", fontSize: width*0.0097, fontWeight: FontWeight.w400, textColor: colorBlack),


                            ],
                          ),
                        ),
                        WantText(
                          text: student["status"],
                          fontSize: width * 0.007,
                          fontWeight: FontWeight.w600,
                          textColor: student["status"] == "Pending" ? colorPinkText : colorGreenCalendar, // Red for "Missed", Green otherwise
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}