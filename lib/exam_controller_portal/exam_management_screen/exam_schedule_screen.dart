import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExamScheduleScreen extends StatefulWidget {
  @override
  _ExamScheduleScreenState createState() => _ExamScheduleScreenState();
}

class _ExamScheduleScreenState extends State<ExamScheduleScreen> {

  final TextEditingController _dateController = TextEditingController();

  String selectedClass = "";
  bool isDropdownOpen = false;
  final List<String> classes = ["All Classes", "Monitor"];

  String selectedSec = "";
  bool isDropdownOpen2 = false;
  final List<String> sections = ["All Sections", "English"];

  String selectedYear = "";
  bool isDropdownOpen3 = false;
  final List<String> year = ["All Year", "2025-2026"];


  final int totalEntries = 15;
  final int itemsPerPage = 3;

  int currentPage = 1;

  int get totalPages => totalEntries;

  void goToPage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  List<int> get visiblePages {
    int currentGroup = (currentPage - 1) ~/ 3;
    int startPage = currentGroup * 3 + 1;
    int endPage = (startPage + 2).clamp(1, totalPages);
    return List.generate(endPage - startPage + 1, (index) => startPage + index);
  }

  (int, int) getCurrentRange() {
    int currentGroup = (currentPage - 1) ~/ 3;
    int startEntry = currentGroup * 3 + 1;
    int endEntry = (startEntry + 2).clamp(1, totalEntries);
    return (startEntry, endEntry);
  }

  @override
  Widget build(BuildContext context) {
    var (startEntry, endEntry) = getCurrentRange();
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WantText(
                          text: "Exam Schedule",
                          fontSize: width * 0.0138,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(width:width*0.03),

                      Container(
                        padding:  EdgeInsets.symmetric(horizontal:width*0.008,vertical: width*0.004),
                        decoration: BoxDecoration(
                          color: colorLightBlueCon,
                          border: Border.all(color: colorLightBlueCon),

                          borderRadius: BorderRadius.circular(width*0.01),

                        ),
                        child: WantText(
                            text:'2025 Academic Year',
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorCustomButton),
                      ),
                      Spacer(),
                      Container(
                        padding:  EdgeInsets.symmetric(horizontal:width*0.008,vertical: width*0.004),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          border: Border.all(color: colorGrey),

                          borderRadius: BorderRadius.circular(width*0.004),
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
                          children: [
                            Image.asset(
                              "assets/icons/question.png",
                              width: width * 0.012,
                              height: width * 0.012,
                              color: colorDarkGreyText,
                            ),
                            SizedBox(width:width*0.006),
                            WantText(
                                text:'Export',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.023,),

                  SizedBox(height: height * 0.023),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(width*0.005),
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
                                  text: "Class",
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
                      ),
                      SizedBox(width: width*0.011),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(width*0.005),
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
                                  text: "Section",
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
                                        selectedSec.isEmpty ? sections[0] : selectedSec,
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
                                    children: sections.map((option) {
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
                                                color: sections.last == option
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
                      ),
                      SizedBox(width: width*0.011),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(width*0.005),
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
                                  text: "Exam Type",
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
                                        selectedYear.isEmpty ? year[0] : selectedYear,
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
                      ),
                      SizedBox(width: width*0.011),

                      Expanded(
                        child: Container(
                            padding: EdgeInsets.all(width*0.005),
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
                            child: CustomTextFormField(hintText: "mm/dd/yyyy", controller: _dateController,labelText: "Date Range")),
                      ),
                    ],
                  ),

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
                        0: FlexColumnWidth(1), // Date Column
                        1: FlexColumnWidth(1), // Mode Column
                        2: FlexColumnWidth(1), // Mode Column
                        3: FlexColumnWidth(1), // Mode Column
                        4: FlexColumnWidth(1), // Mode Column
                        5: FlexColumnWidth(1), // Mode Column
                        6: FlexColumnWidth(1), // Mode Column
                        7: FlexColumnWidth(1), // Mode Column
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
                                text: 'Date',
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
                                text: 'Time',
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
                                text: 'Subject',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,),
                            ),

                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'Class',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'Section',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'Room',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'Supervisor',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack,
                                textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                              child: WantText(
                                text: 'Actions',
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
                                  text: 'Mar 16, 2025',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: '09:00 AM',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/teacherPer1.png",
                                    width: width * 0.018,
                                    height: width * 0.018,
                                  ),
                                  SizedBox(width: width*0.005,),
                                  WantText(
                                      text: 'Science',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: 'Class 10',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: 'Section A',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: 'Room 102',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: width * 0.0182,
                                    width: width * 0.0182,
                                    child: Image.asset(
                                      "assets/images/parentimag.png",
                                      width: width * 0.018,
                                      height: width * 0.018,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: width*0.005,),
                                  WantText(
                                      text: 'Sarah Johnson',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/teacheredit.png",
                                    width: width * 0.012,
                                    height: width * 0.012,
                                    color: colorDarkGreyText,
                                  ),
                                  SizedBox(width: width*0.009,),
                                  Image.asset(
                                    "assets/icons/question.png",
                                    width: width * 0.012,
                                    height: width * 0.012,
                                    color: colorDarkGreyText,
                                  ),
                                ],
                              ),
                            ),




                          ],
                        ),TableRow(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: 'Mar 17, 2025',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: '09:00 AM',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/teacherPer3.png",
                                    width: width * 0.018,
                                    height: width * 0.018,
                                  ),
                                  SizedBox(width: width*0.005,),
                                  WantText(
                                      text: 'English',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: 'Class 10',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: 'Section A',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:WantText(
                                  text: 'Room 103',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                  textAlign: TextAlign.center),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: width * 0.0182,
                                    width: width * 0.0182,
                                    child: Image.asset(
                                      "assets/images/performancemrs.png",
                                      width: width * 0.018,
                                      height: width * 0.018,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: width*0.005,),
                                  WantText(
                                      text: 'Mike Wilson',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: height * 0.011),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/teacheredit.png",
                                    width: width * 0.012,
                                    height: width * 0.012,
                                    color: colorDarkGreyText,
                                  ),
                                  SizedBox(width: width*0.009,),
                                  Image.asset(
                                    "assets/icons/question.png",
                                    width: width * 0.012,
                                    height: width * 0.012,
                                    color: colorDarkGreyText,
                                  ),
                                ],
                              ),
                            ),




                          ],
                        ),



                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.023),
                  Container(
                    padding:  EdgeInsets.all(width*0.008),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WantText(
                            text:'Showing $startEntry to $endEntry of $totalEntries entries',
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorDarkGreyText),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap:currentPage > 1 ? () => goToPage(currentPage - 1) : null,
                              child: Container(
                                padding:  EdgeInsets.symmetric(horizontal:width*0.008,vertical: width*0.003),
                                decoration: BoxDecoration(
                                  color: colorBox,
                                  borderRadius: BorderRadius.circular(width*0.004),
                                  border: Border.all(color: colorGrey),

                                  boxShadow: [
                                    BoxShadow(
                                      color: colorBoxshadow.withOpacity(0.1),
                                      blurRadius: 2,
                                      offset: Offset(0, 2),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child:  WantText(
                                    text:'Previous',
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorGreyTextLogIn),
                              ),
                            ),
                            const SizedBox(width: 8),
                            ...visiblePages.map((page) => GestureDetector(
                              onTap:  () => goToPage(page),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: width*0.004),
                                padding:  EdgeInsets.symmetric(horizontal:width*0.008,vertical: width*0.003),
                                decoration: BoxDecoration(
                                  color:  currentPage == page ? Colors.blue : colorBox,
                                  borderRadius: BorderRadius.circular(width*0.004),
                                  border: Border.all(color: colorGrey),
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorBoxshadow.withOpacity(0.1),
                                      blurRadius: 2,
                                      offset: Offset(0, 2),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Text('$page',style: TextStyle(
                                  color: currentPage == page ? Colors.white : Colors.black,
                                ),),
                              ),
                            )),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: currentPage < totalPages ? () => goToPage(currentPage + 1) : null,
                              child: Container(
                                padding:  EdgeInsets.symmetric(horizontal:width*0.008,vertical: width*0.003),
                                decoration: BoxDecoration(
                                  color: colorBox,
                                  border: Border.all(color: colorGrey),

                                  borderRadius: BorderRadius.circular(width*0.004),
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorBoxshadow.withOpacity(0.1),
                                      blurRadius: 2,
                                      offset: Offset(0, 2),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: WantText(
                                    text:'Next',
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorGreyTextLogIn),
                              ),
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
    );
  }
}

