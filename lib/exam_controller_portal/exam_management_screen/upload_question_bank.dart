import 'package:digi_school/exam_controller_portal/exam_dashboard_screen/recent_notification_widget.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UploadQuestionBank extends StatefulWidget {
  @override
  _UploadQuestionBankState createState() => _UploadQuestionBankState();
}

class _UploadQuestionBankState extends State<UploadQuestionBank> {

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  String selectedClass = "";
  bool isDropdownOpen = false;
  final List<String> classes = ["Wearer", "Monitor"];

  String selectedSub = "";
  bool isDropdownOpen2 = false;
  final List<String> subject = ["Hindi", "English"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(width*0.008),
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
                      Row(
                        children: [
                          WantText(
                              text: "Upload Question Bank",
                              fontSize: width * 0.0138,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),
                          SizedBox(width:width*0.035),
                
                          Container(
                            padding:  EdgeInsets.symmetric(horizontal:width*0.008,vertical: width*0.004),
                            decoration: BoxDecoration(
                              color: colorLightBlueCon,
                              border: Border.all(color: colorLightBlueCon),
                
                              borderRadius: BorderRadius.circular(width*0.01),
                
                            ),
                            child: WantText(
                                text:'Exam Controller',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorCustomButton),
                          ),
                
                        ],
                      ),
                      SizedBox(height: height*0.04),
                
                      Container(
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
                            WantText(
                                text: "Question Bank Details",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                            SizedBox(height: height*0.023),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                
                              children: [
                
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
                                          text: "Grade/Class",
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
                                                selectedClass.isEmpty ? "Select Grade" : selectedClass,
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
                
                              ],
                            ),
                            SizedBox(height: height * 0.023),
                            CustomTextFormField(hintText: "Enter title", controller: _titleController,labelText: "Question Bank Title",),
                            SizedBox(height: height * 0.023),
                            CustomTextFormField(hintText: "Enter description", controller: _descriptionController,labelText: "Description",maxLines: 4,),
                            SizedBox(height: height * 0.023),
                            Container(
                              width: width,
                              padding: EdgeInsets.all(width * 0.011),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:colorTanBackground),
                                color:colorWhite,
                                borderRadius: BorderRadius.circular(width * 0.0083),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/libraryAdd.png',width: width*0.031,color: colorMainTheme,),
                                  SizedBox(height: height * 0.012),
                
                                  WantText(
                                      text: "Drag and drop or click to upload",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorDarkGreyText),
                                  SizedBox(height: height * 0.008),
                
                                  WantText(
                                      text: "Browse files",
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorMainTheme),
                                  SizedBox(height: height * 0.008),
                
                                  WantText(
                                      text: "Supported formats: PDF, DOCX, XLSX (Max size: 10MB)",
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                
                                ],
                              ),
                
                            ),
                            SizedBox(height: height * 0.023),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                
                                CustomButton(
                                  Width: width*0.080,
                                  onTap: (){},
                                  paddingVertical: height*0.008,
                                  backgroundColor: colorWhite,
                                  borderColor: colorGrey,
                                  labelWidget: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      WantText(
                                          text: "Cancel",
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack),
                                    ],
                                  ),
                                ),
                                SizedBox(width: width*0.010,),
                
                                CustomButton(
                                  Width: width*0.14,
                                  onTap: (){},
                                  paddingVertical: height*0.008,
                                  fontSize: width*0.011,
                                  label: "Upload Question Bank",
                                )
                              ],
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
                WantText(text: "Upload Guidelines", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                SizedBox(height: height * 0.023),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/libraryDash9.png',width: width*0.012,),
                    SizedBox(width: width*0.010,),
                    Expanded(
                      child: WantText(
                          text: "Make sure your question bank follows the standard template format",
                          fontSize: width*0.011,
                          textOverflow: TextOverflow.visible,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),
                    ),

                  ],
                ),
                SizedBox(height: height * 0.023),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/libraryDash9.png',width: width*0.012,),
                    SizedBox(width: width*0.010,),
                    Expanded(
                      child: WantText(
                          text: "Include a mix of question types (MCQ, short answer, long answer)",
                          fontSize: width*0.011,
                          textOverflow: TextOverflow.visible,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),
                    ),

                  ],
                ),
                SizedBox(height: height * 0.023),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/libraryDash9.png',width: width*0.012,),
                    SizedBox(width: width*0.010,),
                    Expanded(
                      child: WantText(
                          text: "Ensure all questions have correct answers and marking schemes",
                          fontSize: width*0.011,
                          textOverflow: TextOverflow.visible,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),
                    ),

                  ],
                ),

                SizedBox(height: height * 0.03),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.008),
                  decoration: BoxDecoration(
                    color: colorLightBlue,
                    borderRadius: BorderRadius.circular(width*0.008),
                  ),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        WantText(
                            text: 'Need Help?',
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w500,
                            textOverflow: TextOverflow.visible,
                            textColor: colorCustomButton),
                        SizedBox(height: height * 0.01),
                    
                        WantText(
                            text: 'Download our question bank template and guidelines',
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textOverflow: TextOverflow.visible,
                            textColor: colorCustomButton),
                        SizedBox(height: height * 0.01),
                    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/buttondown.png',width: width*0.012,),
                            SizedBox(width: width*0.008,),
                            WantText(
                                text: 'Download Template',
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w600,
                                textColor: colorCustomButton),
                          ],
                        ),
                    
                      ],
                    ),
                  ),
                ),

                SizedBox(height: height * 0.023),


              ],
            ),
          )
        ],
      ),
    );
  }
}

