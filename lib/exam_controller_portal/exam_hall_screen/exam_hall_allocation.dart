import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';


class ExamHallAllocation extends StatefulWidget {
  @override
  _ExamHallAllocationState createState() => _ExamHallAllocationState();
}

class _ExamHallAllocationState extends State<ExamHallAllocation> {

  String selectedExam = "";
  bool isDropdownOpen = false;
  final List<String> exam = ["Final Term Examination 2025", "Final Term Examination 2026"];

  String selectedHall = "";
  bool isDropdownOpen2 = false;
  final List<String> hall = ["Hall A - 60 Seats", "Hall B - 60 Seats"];

  String selectedClass = "";
  bool isDropdownOpen3 = false;
  final List<String> classes = ["Class X-A", "Class X-B"];

  bool johnSmith = false;
  bool allocated = false;
  bool available = false;
  bool emma = false;
  bool michale = false;

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

  final List<Map<String, String>> seats = [
    {'seat': 'Seat 1', 'name': ''},
    {'seat': 'Seat 2', 'name': 'John Smith'},
    {'seat': 'Seat 3', 'name': ''},
    {'seat': 'Seat 4', 'name': 'Emma Wilson'},
    {'seat': 'Seat 5', 'name': ''},
    {'seat': 'Seat 7', 'name': ''},
    {'seat': 'Seat 8', 'name': ''},
    {'seat': 'Seat 9', 'name': ''},
    {'seat': 'Seat 10', 'name': ''},
    {'seat': 'Seat 11', 'name': ''},

  ];

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(
                              text: "Hall Allocation",
                              fontSize: width * 0.016,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),
                          SizedBox(height: height*0.004,),
                          WantText(
                              text: "Manage examination seating arrangements",
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
                                Image.asset('assets/icons/examHall2.png',width: width*0.010,color: colorWhite,),
                                SizedBox(width: width*0.005,),
                                WantText(
                                    text: "Auto Generate",
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorWhite),
                              ],
                            ),
                          ),
                          SizedBox(width: width*0.010,),

                          CustomButton(
                            Width: width*0.10,
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>DownloadResultScreen()));
                            },
                            paddingVertical: height*0.009,
                            backgroundColor: colorGreenCalendar,
                            borderColor: colorGreenCalendar,
                            labelWidget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/examHall1.png',width: width*0.010,),
                                SizedBox(width: width*0.005,),
                                WantText(
                                    text: "Print Charts",
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

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
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

                              WantText(
                                  text: "Select Examination",
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
                                    children: exam.map((option) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedExam = option;
                                            isDropdownOpen = false;
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
                              SizedBox(height: height * 0.023),

                              GestureDetector(
                                onTap: () =>
                                    _selectDate(context, _dateController),
                                child: AbsorbPointer(
                                  child: CustomTextFormField(
                                      color: colorWhite,
                                      suffixIcon: Icon(Icons.calendar_today),
                                      readOnly: true,
                                      labelText: "Examination Date",
                                      hintText: 'mm/dd/yyyy',
                                      controller: _dateController),
                                ),
                              ),

                              SizedBox(height: height*0.023),
                              WantText(
                                  text: "Select Hall",
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
                                        selectedHall.isEmpty ? hall[0] : selectedHall,
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
                                    children: hall.map((option) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedHall = option;
                                            isDropdownOpen2 = false;
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: hall.last == option
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
                                  text: "Select Class",
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
                                    children: classes.map((option) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedClass = option;
                                            isDropdownOpen3 = false;
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
                                  text: "Select Students",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorTextFieldTitleBlack),
                              SizedBox(height: height*0.016),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: width * 0.008),
                                decoration: BoxDecoration(
                                  color: colorWhite,
                                  border: Border.all(width: 1,color: colorTanBackground),
                                  borderRadius:BorderRadius.circular(width * 0.008),
                                  ),
                               child: Column(
                                 children: [
                                   CheckboxListTile(
                                     value: johnSmith,
                                     onChanged: (value) {
                                       setState(() {
                                         johnSmith = value ?? false;
                                       });
                                     },
                                     title: WantText(
                                         text: "John Smith",
                                         fontSize: width * 0.0097,
                                         fontWeight: FontWeight.w400,
                                         textColor: colorBlack),
                                     controlAffinity: ListTileControlAffinity.leading,
                                     activeColor: colorMainTheme,
                                   ),
                                   Divider(color: colorGreyBorder, thickness: 1),

                                   CheckboxListTile(
                                     value: emma,
                                     onChanged: (value) {
                                       setState(() {
                                         emma = value ?? false;
                                       });
                                     },
                                     title: WantText(
                                         text: "Emma Wilson",
                                         fontSize: width * 0.0097,
                                         fontWeight: FontWeight.w400,
                                         textColor: colorBlack),
                                     controlAffinity: ListTileControlAffinity.leading,
                                     activeColor: colorMainTheme,
                                   ),
                                   Divider(color: colorGreyBorder, thickness: 1),

                                   CheckboxListTile(
                                     value: michale,
                                     onChanged: (value) {
                                       setState(() {
                                         michale = value ?? false;
                                       });
                                     },
                                     title: WantText(
                                         text: "Michael Brown",
                                         fontSize: width * 0.0097,
                                         fontWeight: FontWeight.w400,
                                         textColor: colorBlack),
                                     controlAffinity: ListTileControlAffinity.leading,
                                     activeColor: colorMainTheme,
                                   ),
                                   Divider(color: colorGreyBorder, thickness: 1),
                                   SizedBox(height: height*0.2),

                                 ],
                               ),
                              ),


                            ],
                          ),
                            // SizedBox(height: height * 0.023),
                        ),
                      ),
                      SizedBox(width: width * 0.011),

                      Expanded(
                        flex: 4,
                        child: Container(
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
                              WantText(
                                  text: "Hall A - Seating Arrangement",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorTextFieldTitleBlack),
                              SizedBox(height: height*0.023),
                              Container(
                                height: height * 0.2,
                                child: GridView.builder(
                                  itemCount: seats.length,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5,
                                    childAspectRatio: 2.3,
                                    crossAxisSpacing: 16,
                                    mainAxisSpacing: 16,
                                  ),
                                  itemBuilder: (context, index) {
                                    final seat = seats[index];
                                    final isOccupied = seat['name']!.isNotEmpty;
                                    return Container(
                                      padding: EdgeInsets.all(width*0.005),
                                      decoration: BoxDecoration(
                                        color: isOccupied ? colorLightBlue : colorWhite,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(color: Colors.grey.shade300),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [

                                          WantText(
                                              text: seat['seat']!,
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w500,
                                              textColor: colorBlack),

                                          SizedBox(height: height*0.008),
                                          WantText(
                                              text: isOccupied ? seat['name']! : 'Empty',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w500,
                                              textColor: isOccupied ? colorCustomButton : colorDarkGreyText),

                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: height * 0.023),

                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: CheckboxListTile(
                                      value: allocated,
                                      onChanged: (value) {
                                        setState(() {
                                          allocated = value ?? false;
                                        });
                                      },
                                      title: WantText(
                                          text: "Allocated",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack),
                                      controlAffinity: ListTileControlAffinity.leading,
                                      activeColor: colorMainTheme,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,

                                    child: CheckboxListTile(
                                      value: available,
                                      onChanged: (value) {
                                        setState(() {
                                          available = value ?? false;
                                        });
                                      },
                                      title: WantText(
                                          text: "Available",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack),
                                      controlAffinity: ListTileControlAffinity.leading,
                                      activeColor: colorMainTheme,
                                    ),
                                  ),
                                ],
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
      ),
    );
  }
}

