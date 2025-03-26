import 'package:digi_school/exam_controller_portal/exam_dashboard_screen/recent_notification_widget.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateNewExam extends StatefulWidget {
  @override
  _CreateNewExamState createState() => _CreateNewExamState();
}

class _CreateNewExamState extends State<CreateNewExam> {

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _totalMarksController = TextEditingController();
  final TextEditingController _passingMarksController = TextEditingController();
  final TextEditingController _minController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _instructionController = TextEditingController();

  String selectedClass = "";
  bool isDropdownOpen = false;
  final List<String> classes = ["Wearer", "Monitor"];

  String selectedSub = "";
  bool isDropdownOpen2 = false;
  final List<String> subject = ["Hindi", "English"];

  String selectedYear = "";
  bool isDropdownOpen3 = false;
  final List<String> year = ["2024-2025", "2025-2026"];

  bool showResultsImmediately = false;
  bool allowMultipleAttempts = false;
  bool enableNegativeMarking = false;

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
          child: SingleChildScrollView(

            child: Padding(
              padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WantText(
                      text: "Create New Examination",
                      fontSize: width * 0.0138,
                      fontWeight: FontWeight.w400,
                      textColor: colorBlack),
                  // SizedBox(height: height*0.007,),
                  WantText(
                      text: "Fill in the examination details below",
                      fontSize: width * 0.0097,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkGreyText),
                  SizedBox(height: height*0.023,),
                  Container(
                    // width: width*0.665,
            
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
            
                        SizedBox(height: height * 0.023),
            
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextFormField(hintText: "e.g. Midterm Examination 2025", controller: _titleController,labelText: "Exam Title")
                            ),
                            SizedBox(width: width*0.011),
                            Expanded(
                                child: CustomTextFormField(hintText: "e.g. Midterm Examination 2025", controller: _codeController,labelText: "Exam Code",)
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.023),
            

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Class/Grade",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorTextFieldTitleBlack),
                                  SizedBox(height: height*0.016),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isDropdownOpen = !isDropdownOpen;
                                      });
                                    },
                                    child: Container(
                                      height: height*0.056,
                                      padding: EdgeInsets.symmetric(vertical: width * 0.008, horizontal: height * 0.008),
                                      decoration: BoxDecoration(
                                        color: colorWhite,
                                        border: Border.all(width: 1,color: colorTanBackground),
                                        borderRadius: isDropdownOpen
                                            ? BorderRadius.only(
                                          topLeft: Radius.circular(width * 0.008),
                                          topRight: Radius.circular(width * 0.008),
                                        ) : BorderRadius.all(Radius.circular(width * 0.008)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            selectedClass.isEmpty ? "Select Class" : selectedClass,
                                            style: TextStyle(
                                              color: selectedClass.isEmpty ? colorHintText : colorBlack,
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Icon(Icons.arrow_drop_down, color: colorBlack,size: width*0.018,),
                                        ],
                                      ),
                                    ),
                                  ),

                                  if (isDropdownOpen)
                                    Container(
                                      decoration: BoxDecoration(
                                          color: colorWhite,
                                          border: Border.all(color: colorTanBackground),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(width * 0.008),
                                            bottomLeft: Radius.circular(width * 0.008),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: colorBoxShadow.withOpacity(0.1),
                                              blurRadius: 2,
                                              offset: Offset(0, 2),
                                              spreadRadius: 0,
                                            ),
                                          ]
                                      ),
                                      child: Column(
                                        children: classes.map((option) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedClass = option;
                                                isDropdownOpen = false;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: classes.last == option
                                                        ? Colors.transparent
                                                        : Colors.grey.shade400,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(width * 0.008),
                                                child: Text(
                                                  option,
                                                  style: TextStyle(color: colorBlack, fontWeight: FontWeight.w400, fontSize: width * 0.0097),
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(width: width*0.011),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Subject",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorTextFieldTitleBlack),
                                  SizedBox(height: height*0.016),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isDropdownOpen2 = !isDropdownOpen2;
                                      });
                                    },
                                    child: Container(
                                      height: height*0.056,
                                      padding: EdgeInsets.symmetric(vertical: width * 0.008, horizontal: height * 0.008),
                                      decoration: BoxDecoration(
                                        color: colorWhite,
                                        border: Border.all(width: 1,color: colorTanBackground),
                                        borderRadius: isDropdownOpen2
                                            ? BorderRadius.only(
                                          topLeft: Radius.circular(width * 0.008),
                                          topRight: Radius.circular(width * 0.008),
                                        ) : BorderRadius.all(Radius.circular(width * 0.008)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            selectedSub.isEmpty ? "Select Subject" : selectedSub,
                                            style: TextStyle(
                                              color: selectedSub.isEmpty ? colorHintText : colorBlack,
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Icon(Icons.arrow_drop_down, color: colorBlack,size: width*0.018,),
                                        ],
                                      ),
                                    ),
                                  ),

                                  if (isDropdownOpen2)
                                    Container(
                                      decoration: BoxDecoration(
                                          color: colorWhite,
                                          border: Border.all(color: colorTanBackground),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(width * 0.008),
                                            bottomLeft: Radius.circular(width * 0.008),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: colorBoxShadow.withOpacity(0.1),
                                              blurRadius: 2,
                                              offset: Offset(0, 2),
                                              spreadRadius: 0,
                                            ),
                                          ]
                                      ),
                                      child: Column(
                                        children: subject.map((option) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedSub = option;
                                                isDropdownOpen2 = false;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: subject.last == option
                                                        ? Colors.transparent
                                                        : Colors.grey.shade400,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(width * 0.008),
                                                child: Text(
                                                  option,
                                                  style: TextStyle(color: colorBlack, fontWeight: FontWeight.w400, fontSize: width * 0.0097),
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(width: width*0.011),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Academic Year",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorTextFieldTitleBlack),
                                  SizedBox(height: height*0.016),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isDropdownOpen3 = !isDropdownOpen3;
                                      });
                                    },
                                    child: Container(
                                      height: height*0.056,
                                      padding: EdgeInsets.symmetric(vertical: width * 0.008, horizontal: height * 0.008),
                                      decoration: BoxDecoration(
                                        color: colorWhite,
                                        border: Border.all(width: 1,color: colorTanBackground),
                                        borderRadius: isDropdownOpen3
                                            ? BorderRadius.only(
                                          topLeft: Radius.circular(width * 0.008),
                                          topRight: Radius.circular(width * 0.008),
                                        ) : BorderRadius.all(Radius.circular(width * 0.008)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            selectedYear.isEmpty ? "Select Year" : selectedYear,
                                            style: TextStyle(
                                              color: selectedYear.isEmpty ? colorHintText : colorBlack,
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Icon(Icons.arrow_drop_down, color: colorBlack,size: width*0.018,),
                                        ],
                                      ),
                                    ),
                                  ),

                                  if (isDropdownOpen3)
                                    Container(
                                      decoration: BoxDecoration(
                                          color: colorWhite,
                                          border: Border.all(color: colorTanBackground),
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(width * 0.008),
                                            bottomLeft: Radius.circular(width * 0.008),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: colorBoxShadow.withOpacity(0.1),
                                              blurRadius: 2,
                                              offset: Offset(0, 2),
                                              spreadRadius: 0,
                                            ),
                                          ]
                                      ),
                                      child: Column(
                                        children: year.map((option) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedYear = option;
                                                isDropdownOpen3 = false;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: year.last == option
                                                        ? Colors.transparent
                                                        : Colors.grey.shade400,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(width * 0.008),
                                                child: Text(
                                                  option,
                                                  style: TextStyle(color: colorBlack, fontWeight: FontWeight.w400, fontSize: width * 0.0097),
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.023),
                        WantText(
                            text: "Examination Schedule",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                        SizedBox(height: height * 0.023),
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextFormField(hintText: "mm/dd/yyyy", controller: _dateController,labelText: "Date",)
                            ),
                            SizedBox(width: width*0.011),
                            Expanded(
                                child: CustomTextFormField(hintText: "--:-- --", controller: _timeController,labelText: "Start Time",)
                            ),
                            SizedBox(width: width*0.011),
                            Expanded(
                                child: CustomTextFormField(hintText: "e.g. 120", controller: _minController,labelText: "Duration (minutes)",)
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.023),
                        WantText(
                            text: "Examination Details",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                        SizedBox(height: height * 0.023),
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextFormField(hintText: "e.g. 100", controller: _totalMarksController,labelText: "Total Marks",)
                            ),
                            SizedBox(width: width*0.011),
                            Expanded(
                                child: CustomTextFormField(hintText: "e.g. 40", controller: _passingMarksController,labelText: "Passing Marks",)
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.023),
            
                        SizedBox(
                          width: width*0.450,
                            child: CustomTextFormField(hintText: "Enter examination instructions...", controller: _instructionController,labelText: "Instructions",)),
                        SizedBox(height: height * 0.023),

                        SizedBox(height: height * 0.023),
                        WantText(
                            text: "Additional Settings",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                        SizedBox(height: height * 0.023),
                        CheckboxListTile(
                          value: showResultsImmediately,
                          onChanged: (value) {
                            setState(() {
                              showResultsImmediately = value ?? false;
                            });
                          },
                          title: WantText(
                              text: "Show results immediately after completion",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: colorMainTheme,
                        ),
                        CheckboxListTile(
                          value: allowMultipleAttempts,
                          onChanged: (value) {
                            setState(() {
                              allowMultipleAttempts = value ?? false;
                            });
                          },
                          title: WantText(
                              text: "Allow multiple attempts",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: colorMainTheme,
                        ),
                        CheckboxListTile(
                          value: enableNegativeMarking,
                          onChanged: (value) {
                            setState(() {
                              enableNegativeMarking = value ?? false;
                            });
                          },
                          title: WantText(
                              text: "Enable negative marking",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: colorMainTheme,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.04),


                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}

