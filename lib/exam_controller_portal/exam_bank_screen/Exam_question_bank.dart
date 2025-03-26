import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExamQuestionBank extends StatefulWidget {
  @override
  _ExamQuestionBankState createState() => _ExamQuestionBankState();
}

class _ExamQuestionBankState extends State<ExamQuestionBank> {

  final TextEditingController _searchController = TextEditingController();

  String selectedSub = "";
  bool isDropdownOpen = false;
  final List<String> subject = ["All Subjects", "Monitor"];

  String selectedLevel = "";
  bool isDropdownOpen2 = false;
  final List<String> level = ["All Levels", "English"];

  String selectedType = "";
  bool isDropdownOpen3 = false;
  final List<String> type = ["All Types", "2025-2026"];

  final int totalEntries = 50;
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
                            text: "Question Bank",
                            fontSize: width * 0.016,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
                        SizedBox(height: height*0.004,),
                        WantText(
                            text: "Manage and organize your exam questions",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorGreyTextLogIn),
                      ],
                    ),
                    Row(
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
                              Image.asset('assets/icons/examExport.png',width: width*0.012,),
                              SizedBox(width: width*0.005,),

                              WantText(
                                  text: "Export",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack),
                            ],
                          ),
                        ),
                        SizedBox(width: width*0.010,),
                        CustomButton(
                          Width: width*0.080,
                          onTap: (){},
                          paddingVertical: height*0.008,
                          backgroundColor: colorWhite,
                          borderColor: colorGrey,
                          labelWidget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/examImport.png',width: width*0.012,),
                              SizedBox(width: width*0.005,),
                              WantText(
                                  text: "Import",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack),
                            ],
                          ),
                        ),
                        SizedBox(width: width*0.010,),

                        CustomButton(
                          Width: width*0.11,
                          onTap: (){},
                          paddingVertical: height*0.008,
                          labelWidget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,color: colorWhite,size: width*0.012,),
                              SizedBox(width: width*0.003,),
                              WantText(
                                  text: "Add Question",
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
                SizedBox(height: height * 0.05),
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
                                    selectedSub.isEmpty ? subject[0] : selectedSub,
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
                                children: subject.map((option) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedSub = option;
                                        isDropdownOpen = false;
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
                              text: "Difficulty Level",
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
                                    selectedLevel.isEmpty ? level[0] : selectedLevel,
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
                                children: level.map((option) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedLevel = option;
                                        isDropdownOpen2 = false;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: level.last == option
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
                              text: "Question Type",
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
                                    selectedType.isEmpty ? type[0] : selectedType,
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
                                children: type.map((option) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedType = option;
                                        isDropdownOpen3 = false;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: type.last == option
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
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              text: "Search",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w500,
                              textColor: colorTextFieldTitleBlack),
                          SizedBox(height: height*0.016),
                          Container(
                            height: height*0.056,

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
                        ],
                      ),
                    ),
                  ],
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


                Spacer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

