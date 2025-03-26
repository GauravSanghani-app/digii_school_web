import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExamSettingScreen extends StatefulWidget {
  @override
  _ExamSettingScreenState createState() => _ExamSettingScreenState();
}

class _ExamSettingScreenState extends State<ExamSettingScreen> {

  String selectedClass = "";
  bool isDropdownOpen = false;
  final List<String> classes = ["Class 10-A", "Class 10-B"];

  String selectedSub = "";
  bool isDropdownOpen2 = false;
  final List<String> subject = ["Mathematics", "English"];


  bool allowGraceMarks = true;
  bool exam = true;
  bool result = true;
  bool reminder = false;

final List<Map<String, String>> grades = [
  {'grade': 'A+', 'range': '90-100', 'points': '4.0'},
  {'grade': 'A', 'range': '80-89', 'points': '3.7'},
  {'grade': 'B+', 'range': '70-79', 'points': '3.3'},
];


  final TextEditingController _minAttendanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Padding(
        padding: EdgeInsets.all(width*0.008),
        child: Container(

          width: width,
          decoration: BoxDecoration(
            color: colorBox,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WantText(
                    text: "Examination Settings",
                    fontSize: width * 0.0138,
                    fontWeight: FontWeight.w400,
                    textColor: colorBlack),
                // SizedBox(height: height*0.007,),
                WantText(
                    text: "Configure examination policies, grading systems, and notifications",
                    fontSize: width * 0.0097,
                    fontWeight: FontWeight.w400,
                    textColor: colorDarkGreyText),
                SizedBox(height: height*0.023,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
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

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                    text: "Exam Policies",
                                    fontSize: width * 0.0125,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorBlack),

                                Image.asset(
                                  "assets/icons/teacheredit.png",
                                  width: width * 0.012,
                                  height: width * 0.012,
                                  color: colorCustomButton,
                                ),
                              ],
                            ),
                            SizedBox(height: height*0.04),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                  text: "Minimum Attendance Required",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.black,
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: width * 0.05,
                                      child: TextFormField(
                                        initialValue: '75',
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: width * 0.006, vertical: width * 0.001),
                                          constraints: BoxConstraints(maxHeight: width * 0.028),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey),
                                          ),
                                          enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey),
                                          ),
                                          focusedBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey),
                                          ),
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    SizedBox(width: width * 0.003),
                                    WantText(
                                      text: "%",
                                      fontSize: width * 0.0138,
                                      fontWeight: FontWeight.w400,
                                      textColor: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: height*0.023),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                WantText(
                                    text: "Re-examination Period",
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: width * 0.05,
                                      child: TextFormField(
                                        initialValue: '15',
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: width * 0.006, vertical: width * 0.001),
                                          constraints: BoxConstraints(maxHeight: width * 0.028),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey),
                                          ),
                                          enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey),
                                          ),
                                          focusedBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey),
                                          ),
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    SizedBox(width: width * 0.003),
                                    WantText(
                                      text: "days",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorGreyTextLogIn,
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: height*0.023),
                            buildToggle("Allow Grace Marks", allowGraceMarks, (val) {
                              setState(() {
                                allowGraceMarks = val;
                              });
                            }),

                            SizedBox(height: height*0.09),








                          ],
                        ),
                        // SizedBox(height: height * 0.023),
                      ),
                    ),
                    SizedBox(width: width * 0.011),
                    Expanded(
                      child: Container(
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

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                    text: "Grading System",
                                    fontSize: width * 0.0125,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorBlack),

                                Image.asset(
                                  "assets/icons/teacheredit.png",
                                  width: width * 0.012,
                                  height: width * 0.012,
                                  color: colorCustomButton,
                                ),
                              ],
                            ),
                            SizedBox(height: height*0.04),
                            Padding(
                              padding:EdgeInsets.symmetric(horizontal: width*0.026),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:[
                                  WantText(
                                      text: "Grade",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorGreyTextLogIn),
                                  WantText(
                                      text: "Range",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorGreyTextLogIn),
                                  WantText(
                                      text: "Points",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorGreyTextLogIn),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),

                            ListView.builder(
                              padding:EdgeInsets.symmetric(horizontal: width*0.011),

                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: grades.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:EdgeInsets.symmetric(vertical: width*0.004),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: width*0.06,
                                        child: TextFormField(
                                          initialValue: grades[index]['grade'],
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal: width * 0.006, vertical: width * 0.001),
                                            constraints: BoxConstraints(maxHeight: width * 0.028),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                            enabledBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                            focusedBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(
                                        width: width*0.06,
                                        child: TextFormField(
                                          initialValue: grades[index]['range'],
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal: width * 0.006, vertical: width * 0.001),
                                            constraints: BoxConstraints(maxHeight: width * 0.028),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                            enabledBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                            focusedBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(
                                        width: width*0.06,
                                        child: TextFormField(
                                          initialValue: grades[index]['points'],
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal: width * 0.006, vertical: width * 0.001),
                                            constraints: BoxConstraints(maxHeight: width * 0.028),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                            enabledBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                            focusedBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),

                                    ],
                                  ),
                                );
                              },
                            ),

                          SizedBox(height: height*0.023),
                            TextButton.icon(
                              onPressed: () {},
                              icon:Icon(Icons.add, color: colorCustomButton,size: width*0.014,),
                              label:  WantText(
                                  text: "Add Grade",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorCustomButton),
                            ),




                          ],
                        ),
                        // SizedBox(height: height * 0.023),
                      ),
                    ),
                    SizedBox(width: width * 0.011),
                    Expanded(
                      child: Container(
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

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                    text: "Notifications",
                                    fontSize: width * 0.0125,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorBlack),

                                Image.asset(
                                  "assets/icons/teacheredit.png",
                                  width: width * 0.012,
                                  height: width * 0.012,
                                  color: colorCustomButton,
                                ),
                              ],
                            ),
                            SizedBox(height: height*0.04),
                            buildToggle("Allow Grace Marks", exam, (val) {
                              setState(() {
                                exam = val;
                              });
                            }),
                            WantText(
                                text: "Notify when exam schedule is published",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorDarkGreyText),
                            SizedBox(height: height*0.023),


                            buildToggle("Results Declaration", result, (val) {
                              setState(() {
                                result = val;
                              });
                            }),
                            WantText(
                                text: "Notify when results are published",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorDarkGreyText),
                            SizedBox(height: height*0.023),


                            buildToggle("Reminder", reminder, (val) {
                              setState(() {
                                reminder = val;
                              });
                            }),
                            WantText(
                                text: "Send exam reminders to students",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorDarkGreyText),
                            SizedBox(height: height*0.022),


                          ],
                        ),
                        // SizedBox(height: height * 0.023),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*0.04),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      Width: width*0.13,
                      onTap: (){
                      },
                      paddingVertical: height*0.009,
                      labelWidget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/examHall1.png',width: width*0.010,),
                          SizedBox(width: width*0.005,),
                          WantText(
                              text: "Save Changes",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorWhite),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildToggle(String title, bool value, Function(bool) onChanged) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(width * 0.025),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          WantText(
              text: title,
              fontSize: width * 0.011,
              fontWeight: FontWeight.w500,
              textColor: colorBlack),
          Transform.scale(
            scale: 0.75,  // Decrease the size of the switch
            child: Switch.adaptive(
              value: value,
              onChanged: onChanged,
              activeColor: Colors.white,
              activeTrackColor: Colors.blue,
              inactiveThumbColor: Colors.white,    // Thumb color when OFF
              inactiveTrackColor: colorHostelName,
            ),
          ),
        ],
      ),
    );
  }


}


