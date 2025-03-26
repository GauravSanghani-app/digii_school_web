import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DownloadResultScreen extends StatefulWidget {
  @override
  _DownloadResultScreenState createState() => _DownloadResultScreenState();
}

class _DownloadResultScreenState extends State<DownloadResultScreen> {
  String selectedClass = "";
  bool isDropdownOpen = false;
  final List<String> classes = ["Class 6", "Class 8"];

  String selectedSec = "";
  bool isDropdownOpen2 = false;
  final List<String> section = ["Section A", "Section B"];

  String selectedExam = "";
  bool isDropdownOpen3 = false;
  final List<String> exam = ["First Term", "Second Term"];

  bool math = false;
  bool science = false;
  bool english = false;
  bool history = false;



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
                      text: "Download Result Template",
                      fontSize: width * 0.016,
                      fontWeight: FontWeight.w700,
                      textColor: colorBlack),
                  SizedBox(height: height * 0.04),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WantText(
                                text: "Select Class",
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
                                      selectedClass.isEmpty ? classes[0] : selectedClass,
                                      style: TextStyle(
                                        color: colorBlack,
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w500,
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
                                text: "Select Section",
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
                                      selectedSec.isEmpty ? section[0] : selectedSec,
                                      style: TextStyle(
                                        color: colorBlack,
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w500,
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
                                  children: section.map((option) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedSec = option;
                                          isDropdownOpen2 = false;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: section.last == option
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
                                text: "Select Exam",
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
                                      selectedExam.isEmpty ? exam[0] : selectedExam,
                                      style: TextStyle(
                                        color: colorBlack,
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w500,
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
                                  children: exam.map((option) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedExam = option;
                                          isDropdownOpen3 = false;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: exam.last == option
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
                      text: "Select Subjects",
                      fontSize: width * 0.011,
                      fontWeight: FontWeight.w500,
                      textColor: colorBlack),
                  SizedBox(height: height * 0.023),

                  Row(
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                          value: math,
                          onChanged: (value) {
                            setState(() {
                              math = value ?? false;
                            });
                          },
                          title: WantText(
                              text: "Mathematics",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: colorMainTheme,

                        ),
                      ),
                      Expanded(
                        child:  CheckboxListTile(
                        value: science,
                        onChanged: (value) {
                          setState(() {
                            science = value ?? false;
                          });
                        },
                        title: WantText(
                            text: "Science",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorBlack),
                        controlAffinity: ListTileControlAffinity.leading,
                          activeColor: colorMainTheme,

                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                        value: english,
                        onChanged: (value) {
                          setState(() {
                            english = value ?? false;
                          });
                        },
                        title: WantText(
                            text: "English",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorBlack),
                        controlAffinity: ListTileControlAffinity.leading,
                          activeColor: colorMainTheme,

                        ),),
                      Expanded(
                        child: CheckboxListTile(
                        value: history,
                        onChanged: (value) {
                          setState(() {
                            history = value ?? false;
                          });
                        },
                        title: WantText(
                            text: "History",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorBlack),
                        controlAffinity: ListTileControlAffinity.leading,
                          activeColor: colorMainTheme,

                        ),),
                    ],
                  ),

                  SizedBox(height: height * 0.023),

                  WantText(
                      text: "Template Preview",
                      fontSize: width * 0.0125,
                      fontWeight: FontWeight.w700,
                      textColor: colorBlack),
                  SizedBox(height: height * 0.023),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width * 0.006),
                      boxShadow: [
                        BoxShadow(
                          color: colorBoxShadow.withOpacity(0.1),
                          blurRadius: 2,
                          offset: Offset(0, 3),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Table(
                      border: TableBorder(
                        horizontalInside: BorderSide(
                          color: colorBox,
                          width: width * 0.001,
                        ),
                      ),
                      columnWidths: const {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(1),
                        2: FlexColumnWidth(1),
                        3: FlexColumnWidth(1),
                        4: FlexColumnWidth(1),

                      },
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          decoration: BoxDecoration(
                              color: colorLightGrey,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(width * 0.008),
                                  topLeft: Radius.circular(width * 0.008))

                            // Set heading row background color
                          ),
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'Roll No',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'Student Name',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,
                              ),
                            ),

                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'Mathematics',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,),
                            ),

                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'Science',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'English',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,),
                            ),


                          ],
                        ),
                        // Table Rows (Data)
                        TableRow(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: '001',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: '[Student Name]',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: '[Marks]',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: '[Marks]',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: '[Marks]',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),





                          ],
                        ),




                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.023),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        Width: width*0.138,
                        onTap: (){},
                        paddingVertical: height*0.009,
                        backgroundColor: colorLightGrey,
                        borderColor: colorGrey,
                        labelWidget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Icon(Icons.remove_red_eye_outlined,color: colorBlack,size: width*0.013,),
                            SizedBox(width: width*0.005,),
                            WantText(
                                text: "Preview Template",
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                          ],
                        ),
                      ),
                      SizedBox(width: width*0.010,),

                      CustomButton(
                        Width: width*0.138,
                        onTap: (){
                        },
                        paddingVertical: height*0.009,
                        labelWidget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/buttondown.png',width: width*0.012,color: colorWhite,),
                            SizedBox(width: width*0.005,),
                            WantText(
                                text: "Download Template",
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w400,
                                textColor: colorWhite),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height*0.023),

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
                            text: "How to use the template?",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                        SizedBox(height: height * 0.023),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(width*0.007),
                                    decoration: BoxDecoration(
                                      color: colorLightBlueCon,
                                      borderRadius: BorderRadius.circular(width*0.04),
                                    ),
                                    child:Image.asset('assets/icons/buttondown.png',width: width*0.0125,),

                                  ),
                                  SizedBox(width: width * 0.010),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            text: "Download",
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w500,
                                            textColor: colorBlack),
                                        SizedBox(height: height*0.008),
                                        WantText(
                                            text: "Download the Excel template for your selected class and subjects",
                                            fontSize: width * 0.0097,
                                            textOverflow: TextOverflow.visible,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreyTextLogIn),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: width*0.015,),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(width*0.007),
                                    decoration: BoxDecoration(
                                      color: colorLightBlueCon,
                                      borderRadius: BorderRadius.circular(width*0.04),
                                    ),
                                    child:Image.asset('assets/icons/teacheredit.png',width: width*0.0125,color: colorCustomButton,),

                                  ),
                                  SizedBox(width: width * 0.010),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            text: "Fill Data",
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w500,
                                            textColor: colorBlack),
                                        SizedBox(height: height*0.008),
                                        WantText(
                                            text: "Enter marks for each student in the respective subject columns",
                                            fontSize: width * 0.0097,
                                            textOverflow: TextOverflow.visible,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreyTextLogIn),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: width*0.015,),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(width*0.007),
                                    decoration: BoxDecoration(
                                      color: colorLightBlueCon,
                                      borderRadius: BorderRadius.circular(width*0.04),
                                    ),
                                    child:Image.asset('assets/icons/buttonup.png',width: width*0.0125,),

                                  ),
                                  SizedBox(width: width * 0.010),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            text: "Upload",
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w500,
                                            textColor: colorBlack),
                                        SizedBox(height: height*0.008),
                                        WantText(
                                            text: "Upload the filled template back to the system",
                                            fontSize: width * 0.0097,
                                            textOverflow: TextOverflow.visible,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreyTextLogIn),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: width*0.011,),



                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.06),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

