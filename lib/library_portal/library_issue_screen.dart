
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';


class LibraryIssueScreen extends StatefulWidget {
  @override
  _LibraryIssueScreenState createState() => _LibraryIssueScreenState();
}

class _LibraryIssueScreenState extends State<LibraryIssueScreen> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _bookController = TextEditingController();
  TextEditingController _bookIdController = TextEditingController();

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



  String selectedFine = "";
  bool isDropdownOpen = false;


  final List<String> fine = ["gvhb", "Monvhjbi"];

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
                  Container(
                    padding: EdgeInsets.all(width*0.008),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width * 0.008),
                      boxShadow: [
                        BoxShadow(
                          color: colorBoxShadow.withOpacity(0.1),
                          blurRadius: 2,
                          offset: Offset(0, 3),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(width*0.011),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/icons/libraryIssue1.png',width: width*0.011,),
                                    SizedBox(width: width*0.005),
                                    WantText(
                                        text: "Issue Book",
                                        fontSize: width * 0.0138,
                                        fontWeight: FontWeight.w700,
                                        textColor: colorBlack),
                                  ],
                                ),
                                SizedBox(height: height*0.03),

                                CustomTextFormField(
                                  labelText: "Search Student/ Staff",
                                  controller: _nameController,
                                  hintText: "Enter Name or ID",
                                  suffixIcon: Icon(Icons.search_sharp,color: colorGreyText,),
                                  // Image.asset('assets/icons/libraryAdd.png',width: width*0.011,),
                                ),

                                SizedBox(height: height*0.05),

                                CustomTextFormField(
                                  labelText: "Select Book",
                                  controller: _bookController,
                                  hintText: "Search by title or scan barcode",
                                  suffixIcon:Padding(
                                    padding: EdgeInsets.all(width*0.0083),
                                    child: Image.asset('assets/icons/libraryBook1.png',width: width*0.0097,),
                                  ),
                                ),
                                SizedBox(height: height*0.05),
                                GestureDetector(
                                  onTap: () =>
                                      _selectDate(context, _dateController),
                                  child: AbsorbPointer(
                                    child: CustomTextFormField(
                                        color: colorWhite,
                                        suffixIcon: Icon(Icons.calendar_today),
                                        readOnly: true,
                                        labelText: "Due Date",
                                        hintText: 'mm/dd/yyyy',
                                        controller: _dateController),
                                  ),
                                ),
                                SizedBox(height: height*0.06),
                                CustomButton(Width: width, onTap: (){},label: "Confirm Issue",)
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(width*0.016),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/icons/libraryIssue2.png',width: width*0.011,),
                                    SizedBox(width: width*0.005),
                                    WantText(
                                        text: "Return Book",
                                        fontSize: width * 0.0138,
                                        fontWeight: FontWeight.w700,
                                        textColor: colorBlack),
                                  ],
                                ),
                                SizedBox(height: height*0.023),
                                CustomTextFormField(
                                  hintText: "Enter Book ID or scan barcode",
                                  controller: _bookIdController,
                                  labelText: "Search Issued Book",
                                  suffixIcon:Padding(
                                    padding: EdgeInsets.all(width*0.0083),
                                    child: Image.asset('assets/icons/libraryBook1.png',width: width*0.0097,),
                                  ),
                                ),
                                SizedBox(height: height*0.023),
                                Container(
                                  padding: EdgeInsets.all(width*0.013),
                                  decoration: BoxDecoration(
                                    color: colorLightGrey,
                                    borderRadius: BorderRadius.circular(width*0.008),
                                  ),
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
                                                  text: "Issue Date",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorGreyTextLogIn),
                                              WantText(
                                                  text: "Jan 15, 2025",
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorBlack),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  text: "Due Date",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorGreyTextLogIn),
                                              WantText(
                                                  text: "Jan 29, 2025",
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorBlack),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: height*0.016,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  text: "Days Overdue",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorBlack),
                                              WantText(
                                                  text: "2 days",
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorRedText),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              WantText(
                                                  text: "Fine Amount",
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorBlack),
                                              WantText(
                                                  text: "Rs 200",
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w500,
                                                  textColor: colorRedText),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: height*0.023),
                                WantText(
                                    text: "Fine Payment Status",
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
                                          selectedFine.isEmpty ? "Select Status" : selectedFine,
                                          style: TextStyle(
                                            color: selectedFine.isEmpty ? colorHintText : colorBlack,
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Icon(Icons.arrow_drop_down, color: colorBlack,size: width*0.02,),
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
                                      children: fine.map((option) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedFine = option;
                                              isDropdownOpen = false;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: fine.last == option
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
                                SizedBox(height: height*0.04),
                                CustomButton(Width: width, onTap: (){},label: "Confirm Return",backgroundColor: colorGreenCalendar,borderColor: colorGreenCalendar,)

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.023),

                  Container(
                    padding: EdgeInsets.all(width*0.016),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width * 0.008),
                      boxShadow: [
                        BoxShadow(
                          color: colorBoxShadow.withOpacity(0.1),
                          blurRadius: 2,
                          offset: Offset(0, 3),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WantText(
                            text: "Recent Transactions",
                            fontSize: width * 0.0138,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
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
                                      text: 'Book Title',
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
                                      text: 'Student/Staff',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center,),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'Type',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center,),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'Date',
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


                                ],
                              ),
                              // Table Rows (Data)
                              TableRow(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child: WantText(
                                        text: 'Status',
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
                                        text: 'Issue',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: 'Jan 15, 2025',
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
                                          color: colorLightYellow,
                                          borderRadius: BorderRadius.circular(width * 0.02),
                                        ),
                                        child: WantText(
                                          text: 'Issued',
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w600,
                                          textColor: colorBrown,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),




                                ],
                              ), TableRow(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child: WantText(
                                        text: 'To Kill a Mockingbird',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: 'Sarah Johnson(staff)',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: 'Return',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: 'Jan 14, 2025',
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
                                          text: 'Returned',
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w600,
                                          textColor: colorDarkGreen,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

