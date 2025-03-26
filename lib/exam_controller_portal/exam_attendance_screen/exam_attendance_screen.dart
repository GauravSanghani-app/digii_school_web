import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';


class ExamAttendanceScreen extends StatefulWidget {
  @override
  _ExamAttendanceScreenState createState() => _ExamAttendanceScreenState();
}

class _ExamAttendanceScreenState extends State<ExamAttendanceScreen> {

  String selectedClass = "";
  bool isDropdownOpen = false;
  final List<String> classes = ["Class 10-A", "Class 10-B"];

  String selectedSub = "";
  bool isDropdownOpen2 = false;
  final List<String> subject = ["Mathematics", "English"];



  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        controller.text = DateFormat('MM/dd/yyyy').format(pickedDate);
      });
    }
  }


  final int totalEntries = 45;
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
                  children: [
                    WantText(
                        text: "Exam Attendance",
                        fontSize: width * 0.016,
                        fontWeight: FontWeight.w700,
                        textColor: colorBlack),
                    SizedBox(width: width*0.02),
                    Container(
                      padding:  EdgeInsets.symmetric(horizontal:width*0.008,vertical: width*0.004),
                      decoration: BoxDecoration(
                        color: colorLightBlueCon,
                        border: Border.all(color: colorLightBlueCon),

                        borderRadius: BorderRadius.circular(width*0.01),

                      ),
                      child: WantText(
                          text:'Active Session',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textColor: colorCustomButton),
                    ),

                  ],
                ),
                SizedBox(height: height * 0.04),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
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
                            WantText(
                                text: "Exam Details",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack),
                            SizedBox(height: height*0.023),
                            GestureDetector(
                              onTap: () =>
                                  _selectDate(context, _dateController),
                              child: AbsorbPointer(
                                child: CustomTextFormField(
                                    color: colorWhite,
                                    suffixIcon: Icon(Icons.calendar_today),
                                    readOnly: true,
                                    labelText: "Select Date",
                                    hintText: 'mm/dd/yyyy',
                                    controller: _dateController),
                              ),
                            ),
                            SizedBox(height: height*0.023),

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




                            SizedBox(height: height*0.023),
                            WantText(
                                text: "Select Subject",
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
                            SizedBox(height: height * 0.011),





                          ],
                        ),
                        // SizedBox(height: height * 0.023),
                      ),
                    ),
                    SizedBox(width: width * 0.011),

                    Expanded(
                      flex: 6,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(width*0.008),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

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
                                                text: "Total Students",
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w400,
                                                textColor: colorGreyTextLogIn),
                                            SizedBox(height: height*0.003),
                                            WantText(
                                                text: "24",
                                                fontSize: width * 0.0166,
                                                fontWeight: FontWeight.w500,
                                                textColor: colorBlack),

                                          ],
                                        ),
                                        Image.asset('assets/icons/teacherhome1.png',width: width*0.013,),
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
                                                text: "Present",
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w400,
                                                textColor: colorGreyTextLogIn),
                                            SizedBox(height: height*0.003),
                                            WantText(
                                                text: "42",
                                                fontSize: width * 0.0166,
                                                fontWeight: FontWeight.w500,
                                                textColor: colorBlack),

                                          ],
                                        ),
                                        Image.asset('assets/images/examatten2.png',width: width*0.013,),
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
                                                text: "Absent",
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w400,
                                                textColor: colorGreyTextLogIn),
                                            SizedBox(height: height*0.003),
                                            WantText(
                                                text: "3",
                                                fontSize: width * 0.0166,
                                                fontWeight: FontWeight.w500,
                                                textColor: colorBlack),

                                          ],
                                        ),
                                        Image.asset('assets/images/examatten1.png',width: width*0.013,),
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
                                                text: "Attendance %",
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w400,
                                                textColor: colorGreyTextLogIn),
                                            SizedBox(height: height*0.003),
                                            WantText(
                                                text: "93.3%",
                                                fontSize: width * 0.0166,
                                                fontWeight: FontWeight.w500,
                                                textColor: colorBlack),

                                          ],
                                        ),
                                        Image.asset('assets/icons/navperformance.png',width: width*0.012,color: colorPurple,),
                                      ],
                                    ),

                                  ),
                                ),



                              ],
                            ),
                            SizedBox(height: height * 0.023),

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
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [
                                      WantText(
                                          text: "Student Attendance",
                                          fontSize: width * 0.0125,
                                          fontWeight: FontWeight.w700,
                                          textColor: colorBlack),

                                      Row(
                                        children: [

                                          CustomButton(
                                            Width: width*0.11,
                                            onTap: (){},
                                            paddingVertical: height*0.009,
                                            backgroundColor: colorGreenCalendar,
                                            borderColor: colorGreenCalendar,
                                            labelWidget: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset('assets/icons/buttondown.png',width: width*0.010,color: colorWhite,),
                                                SizedBox(width: width*0.005,),
                                                WantText(
                                                    text: "Export Report",
                                                    fontSize: width * 0.011,
                                                    fontWeight: FontWeight.w400,
                                                    textColor: colorWhite),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: width*0.010,),

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
                                                    text: "Save Attendance",
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
                                  SizedBox(height: height * 0.016),

                                  Divider(color: colorGreyBorder, thickness: 1),
                                  SizedBox(height: height * 0.016),

                                  SizedBox(height: height*0.023,),
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
                                                textAlign: TextAlign.center,),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                              child: WantText(
                                                text: 'Status',
                                                fontSize: width * 0.0097,
                                                fontWeight: FontWeight.w500,
                                                textColor: colorBlack,
                                                textAlign: TextAlign.center,),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                              child: WantText(
                                                text: 'Remarks',
                                                fontSize: width * 0.0097,
                                                fontWeight: FontWeight.w500,
                                                textColor: colorBlack,
                                                textAlign: TextAlign.center,),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                              child: WantText(
                                                text: 'Action',
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
                                                  text: 'John Doe',
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
                                                    color: colorLightGreen,
                                                    borderRadius: BorderRadius.circular(width * 0.02),
                                                  ),
                                                  child: WantText(
                                                    text: 'Present',
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
                                              child:WantText(
                                                  text: '--',
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorBlack,
                                                  textAlign: TextAlign.center),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.symmetric(vertical: height * 0.011),
                                              child:Image.asset(
                                                "assets/icons/teacheredit.png",
                                                width: width * 0.012,
                                                height: width * 0.012,
                                                color: colorBlack,
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
                                                  text: 'Jane Smith',
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
                                                    color: colorPinkContainer,
                                                    borderRadius: BorderRadius.circular(width * 0.02),
                                                  ),
                                                  child: WantText(
                                                    text: 'Absent',
                                                    fontSize: width * 0.0097,
                                                    fontWeight: FontWeight.w600,
                                                    textColor: colorRedCalendar,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.symmetric(vertical: height * 0.011),
                                              child:WantText(
                                                  text: 'Medical Leave',
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorBlack,
                                                  textAlign: TextAlign.center),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.symmetric(vertical: height * 0.011),
                                              child:Image.asset(
                                                "assets/icons/teacheredit.png",
                                                width: width * 0.012,
                                                height: width * 0.012,
                                                color: colorBlack,
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


                          ],
                        ),
                        // SizedBox(height: height * 0.023),
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
    );
  }
}

