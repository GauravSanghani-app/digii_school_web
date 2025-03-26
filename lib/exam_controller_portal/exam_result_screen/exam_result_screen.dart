import 'package:digi_school/exam_controller_portal/exam_result_screen/download_result_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExamResultScreen extends StatefulWidget {
  @override
  _ExamResultScreenState createState() => _ExamResultScreenState();
}

class _ExamResultScreenState extends State<ExamResultScreen> {
  final TextEditingController _searchController = TextEditingController();

  String selectedClass = "";
  bool isDropdownOpen = false;
  final List<String> classes = ["Class 10-A", "Class 10-B"];

  final int totalEntries = 24;
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              text: "Exam Results Management",
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),
                          SizedBox(height: height*0.004,),
                          WantText(
                              text: "Final Term Examination 2025",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                        ],
                      ),
                      Row(
                        children: [
            
                          CustomButton(
                            Width: width*0.11,
                            onTap: (){},
                            paddingVertical: height*0.009,
                            labelWidget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/buttondown.png',width: width*0.010,color: colorWhite,),
                                SizedBox(width: width*0.005,),
                                WantText(
                                    text: "Export Results",
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorWhite),
                              ],
                            ),
                          ),
                          SizedBox(width: width*0.010,),
            
                          CustomButton(
                            Width: width*0.134,
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DownloadResultScreen()));
                            },
                            paddingVertical: height*0.009,
                            backgroundColor: colorGreenCalendar,
                            borderColor: colorGreenCalendar,
                            labelWidget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/examResult.png',width: width*0.010,),
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
            
                    ],
                  ),
                  SizedBox(height: height * 0.04),
            
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WantText(
                                text: "Upload Results",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                            CustomButton(
                              Width: width*0.10,
                              onTap: (){},
                              paddingVertical: height*0.009,
                              borderColor: colorGrey,
                              backgroundColor: colorWhite,
                              labelWidget: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/buttonup.png',width: width*0.010,color: colorGreyTextLogIn,),
                                  SizedBox(width: width*0.005,),
                                  WantText(
                                      text: "Upload CSV",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorGreyTextLogIn),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                              Image.asset('assets/icons/libraryAdd.png',width: width*0.031,),
                              SizedBox(height: height * 0.012),
            
                              WantText(
                                  text: "Drag and drop your CSV file here or click to browse",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorGreyTextLogIn),
                              SizedBox(height: height * 0.008),
            
                              WantText(
                                  text: "Supported formats: CSV, Excel",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorDarkGreyText),
            
            
                            ],
                          ),
            
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
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
            
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WantText(
                                text: "Class Results",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
            
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
            
                              children: [
                                Container(
                                  height: height*0.056,
                                  width: width*0.2,
                                  decoration: BoxDecoration(
                                      color: colorWhite,
                                      borderRadius: BorderRadius.circular(width*0.008),
                                      border: Border.all(color: colorTanBackground)
                                  ),
                                  padding:  EdgeInsets.symmetric(horizontal: width*0.006),
                                  child:  Row(
                                    children: [
                                      Icon(Icons.search, color: colorDarkGreyText),
                                      SizedBox(width: width*0.006),
                                      Expanded(
                                        child: TextField(
                                          controller: _searchController,
                                          decoration: InputDecoration(
                                            hintText: 'Search questions...',
                                            hintStyle: TextStyle(color: colorGreyText),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: width*0.016,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isDropdownOpen = !isDropdownOpen;
                                        });
                                      },
                                      child: Container(
                                        height: height*0.056,
                                        width: width*0.10,
            
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
                                            Icon(Icons.arrow_drop_down, color: colorBlack,size: width*0.016,),
                                          ],
                                        ),
                                      ),
                                    ),
            
                                    if (isDropdownOpen)
                                      Container(
                                        width: width*0.10,
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
                              ],
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
                                      text: 'Roll No.',
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
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'Total',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center,),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'Grade',
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
                                        text: 'John Smith',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '85',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '92',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '88',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '265',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: height * 0.011),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.006, vertical: height * 0.006),
                                        decoration: BoxDecoration(
                                          color: colorLightCon,
                                          borderRadius: BorderRadius.circular(width * 0.02),
                                        ),
                                        child: WantText(
                                          text: 'A',
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w600,
                                          textColor: colorDarkGreen,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
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
                                          color: colorCustomButton,
                                        ),
                                        SizedBox(width: width*0.009,),
            
                                        Icon(Icons.delete,color: colorRedText,size: width*0.015,)
                                      ],
                                    ),
                                  ),
            
            
            
            
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '002',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: 'Emma Johnson',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '78',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '85',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '90',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '253',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: height * 0.011),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.006, vertical: height * 0.006),
                                        decoration: BoxDecoration(
                                          color: colorLightBlueCon,
                                          borderRadius: BorderRadius.circular(width * 0.02),
                                        ),
                                        child: WantText(
                                          text: 'B',
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w600,
                                          textColor: colorCustomButton,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
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
                                          color: colorCustomButton,
                                        ),
                                        SizedBox(width: width*0.009,),
            
                                        Icon(Icons.delete,color: colorRedText,size: width*0.015,)
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
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.023),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
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
            
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Total Exams",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  SizedBox(height: height*0.003),
                                  WantText(
                                      text: "24",
                                      fontSize: width * 0.0166,
                                      fontWeight: FontWeight.w600,
                                      textColor: colorBlack),
            
                                ],
                              ),
                              Image.asset('assets/images/examHome1.png',width: width*0.030,),
                            ],
                          ),
            
                        ),
                      ),
                      SizedBox(width: width*0.008,),
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
            
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Passed",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  SizedBox(height: height*0.003),
            
                                  WantText(
                                      text: "847",
                                      fontSize: width * 0.0166,
                                      fontWeight: FontWeight.w600,
                                      textColor: colorBlack),
            
                                ],
                              ),
                              Image.asset('assets/images/examHome2.png',width: width*0.030),
                            ],
                        ),
                      ),
                      ),
                      SizedBox(width: width*0.008,),
            
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
            
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Failed",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  SizedBox(height: height*0.003),
            
                                  WantText(
                                      text: "23",
                                      fontSize: width * 0.0166,
                                      fontWeight: FontWeight.w600,
                                      textColor: colorBlack),
                                ],
                              ),
                              Image.asset('assets/images/examResult2.png',width: width*0.030),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.008,),
            
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
            
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Average Grade",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  SizedBox(height: height*0.003),
                                  WantText(
                                      text: "B+",
                                      fontSize: width * 0.0166,
                                      fontWeight: FontWeight.w600,
                                      textColor: colorBlack),
            
                                ],
                              ),
                              Image.asset('assets/icons/upcoming2.png',width: width*0.030,),
                            ],
                          ),
            
                        ),
                      ),
            
            
            
                    ],
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

