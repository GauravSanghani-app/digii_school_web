import 'package:digi_school/dashboard/home_screen/notic_widget.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';


class DashAttendanceScreen extends StatefulWidget {
  @override
  _DashAttendanceScreenState createState() => _DashAttendanceScreenState();
}

class _DashAttendanceScreenState extends State<DashAttendanceScreen> {


  List<Map<String, dynamic>> students = [
    {
      'name': 'Aarav Sharma',
      'rollNo': '1',
      'photo': 'assets/images/boy.png',
      'isPresent': true,
    },
    {
      'name': 'Ananya Iyer',
      'rollNo': '2',
      'photo': 'assets/images/person.png',
      'isPresent': true,
    },
    {
      'name': 'Arjun Malhotra',
      'rollNo': '3',
      'photo': 'assets/images/roll3.png',
      'isPresent': true,
    },
    {
      'name': 'Ayaan Qureshi',
      'rollNo': '4',
      'photo': 'assets/images/boy.png',
      'isPresent': false,
    },
    {
      'name': 'Dev Patel',
      'rollNo': '5',
      'photo': 'assets/images/roll5.png',
      'isPresent': true,
    },
    {
      'name': 'Meera Reddy',
      'rollNo': '6',
      'photo': 'assets/images/roll6.png',
      'isPresent': false,
    },
    {
      'name': 'Mihir Joshi',
      'rollNo': '7',
      'photo': 'assets/images/roll7.png',
      'isPresent': true,
    },
    {
      'name': 'Priya Nair',
      'rollNo': '8',
      'photo': 'assets/images/roll8.png',
      'isPresent': true,
    },
  ];

  List<Map<String, dynamic>> leaveRequests = [
    {
      "image": "assets/images/roll6.png",
      "name": "Kavya Iyer",
      "rollNo": "10",
      "reason": "Sick Leave",
      "status": "Approved",
    },
    {
      "image": "assets/images/boy.png",
      "name": "Aditya Rao",
      "rollNo": "12",
      "reason": "Travel",
      "status": "Pending",
    },
    {
      "image": "assets/images/roll8.png",
      "name": "Manya Gupta",
      "rollNo": "13",
      "reason": "Family Emergency",
      "status": "Rejected",
    },
  ];

  void updateStatus(int index, String newStatus) {
    setState(() {
      leaveRequests[index]["status"] = newStatus;
    });
  }
  bool isSelecteds = false;


  DateTime selectedDate = DateTime.now();

  void _showCalendarDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: colorWhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: SizedBox(
            width: width * 0.277,
            child: CalendarWidget(
              initialDate: selectedDate,
              onDateSelected: (date) {
                setState(() => selectedDate = date);
                Navigator.pop(context);
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


      body: Expanded(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(width*0.011),
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

                        Container(
                          width: width,
                          padding: EdgeInsets.all( width * 0.008),
                          decoration: BoxDecoration(
                            color: colorCustomButtonLabelWhite,
                            borderRadius: BorderRadius.circular(width*0.0083),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'Class Teacher of ',
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w500,
                                            textColor: colorMainTheme),
                                GestureDetector(
                                  onTap: () => _showCalendarDialog(context),
                                  child: SizedBox(
                                    height: height * 0.033,
                                    child: Container(
                                      padding: EdgeInsets.all(width * 0.003),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: colorMainTheme),
                                        color: colorMainTheme,
                                        borderRadius: BorderRadius.circular(width * 0.006),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.calendar_today_outlined, size: width * 0.0125, color: Colors.white),
                                          SizedBox(width: width * 0.005),
                                          Text(
                                            "${selectedDate.day} ${_getMonthName(selectedDate.month)} ${selectedDate.year}",
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                fontSize: width * 0.0097,
                                                color: colorWhite,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                      ],
                                    ),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: 'Grade 12 - A',
                                        fontSize: width * 0.0138,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        CustomButton(Width: width, onTap: (){}, label: "Take Attendance"),


                        SizedBox(height: height * 0.02),

                        WantText(
                            text: 'List of Students',
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
                        SizedBox(height: height * 0.02),

                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width*0.570,
                              child: TextFormField(
                                decoration: InputDecoration(

                                  prefixIcon:  Padding(
                                    padding:EdgeInsets.all(12),
                                    child: Image.asset("assets/images/search.png",width: width*0.0097,height: height*0.035),
                                  ),

                                  hintText: "Search for Student",
                                  hintStyle: TextStyle(
                                      color: colorDarkGreyText,
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400
                                  ),
                                  fillColor: colorWhite,
                                  filled: true,
                                  contentPadding: EdgeInsets.all(0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(width * 0.0138),
                                      borderSide: BorderSide(color: colorWhite)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(width * 0.0138),
                                      borderSide: BorderSide(color: colorWhite)),
                                ),
                              ),
                            ),
                            SizedBox(width: width*0.025),

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelecteds = !isSelecteds; // Toggle state
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: colorMainTheme, width: 1), // Always blue border
                                      color: isSelecteds ? colorGrey : colorMainTheme, // White when selected, else blue
                                    ),
                                    child: isSelecteds
                                        ? null // If selected, remove inner circle
                                        : Icon(Icons.circle, size: width * 0.008, color: colorWhite), // White inner circle initially
                                  ),
                                  SizedBox(height: height * 0.003),
                                  WantText(text: "Mark all\npresent", fontSize: width * 0.006, fontWeight: FontWeight.w500, textColor:colorMainTheme),

                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),

                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: students.length,
                          itemBuilder: (context, index) {
                            var student = students[index];

                            return Column(
                              children: [
                                Container(
                                  width: width,
                                  padding: EdgeInsets.all( width * 0.005),
                                  decoration: BoxDecoration(
                                    color: colorCustomButtonLabelWhite,
                                    borderRadius: BorderRadius.circular(width*0.0083),
                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            student['photo'],
                                            width: width * 0.025,
                                            height: width * 0.025,
                                          ),
                                          SizedBox(width: width * 0.016),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              WantText(text: student['name'], fontSize: width * 0.011,fontWeight: FontWeight.w600, textColor: colorBlack),

                                              WantText(text: 'Roll no. - ${student['rollNo']}', fontSize: width * 0.0097,fontWeight: FontWeight.w400, textColor: colorBlack),

                                            ],
                                          ),

                                        ],
                                      ),


                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                student['isPresent'] = true; // Mark as present
                                              });
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  width:35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: student['isPresent'] ? colorGreen : colorMainTheme,
                                                      width: 1,
                                                    ),
                                                    color: student['isPresent'] ? colorGreen : colorGrey,
                                                  ),
                                                  child: student['isPresent']
                                                      ? Icon(Icons.circle, size: width * 0.008, color: colorWhite)
                                                      : SizedBox.shrink(), // Only show the circle when present
                                                ),
                                                WantText(text: "Present", fontSize: width * 0.006, fontWeight: FontWeight.w600, textColor:student['isPresent'] ? colorGreen : colorMainTheme,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: width * 0.012),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                student['isPresent'] = false; // Mark as absent
                                              });
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: student['isPresent'] ? colorMainTheme : colorRedCalendar,
                                                      width: 1,
                                                    ),
                                                    color: student['isPresent'] ? colorGrey : colorRedCalendar,
                                                  ),
                                                  child: !student['isPresent']
                                                      ? Icon(Icons.circle, size: width * 0.008, color: colorWhite)
                                                      : SizedBox.shrink(), // Only show the circle when absent
                                                ),

                                                WantText(text: "Absent", fontSize: width * 0.006, fontWeight: FontWeight.w600, textColor:student['isPresent'] ? colorMainTheme : colorRedCalendar,)

                                              ],
                                            ),
                                          ),

                                          SizedBox(width: width * 0.012),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: height * 0.0008, horizontal: width * 0.003),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: colorMainTheme,
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.circular(width * 0.008),
                                                color: colorWhite),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Other",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: width * 0.006,
                                                      fontWeight: FontWeight.w500,
                                                      color: colorMainTheme),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: colorMainTheme,
                                                  size: width * 0.013,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: height*0.016,)
                              ],
                            );
                          },
                        ),

                        CustomButton(Width: width, onTap: (){}, label: "Submit Attendance"),

                        SizedBox(height: height*0.023),

                        WantText(
                            text: 'Leave Request',
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
                        SizedBox(height: height * 0.02),

                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: leaveRequests.length,

                          itemBuilder: (context, index) {
                            Map<String, dynamic> request = leaveRequests[index];
                            String status = request["status"];

                            return Column(
                              children: [
                                Container(
                                  width: width,
                                  padding: EdgeInsets.all( width * 0.008),
                                  decoration: BoxDecoration(
                                    color: colorCustomButtonLabelWhite,
                                    borderRadius: BorderRadius.circular(width*0.0083),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Row(
                                        children: [
                                          Image.asset(
                                            request["image"],
                                            width: width * 0.028,
                                            height: width * 0.028,
                                          ),
                                          SizedBox(width: width * 0.016),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              WantText(text: request["name"], fontSize: width * 0.011, fontWeight: FontWeight.w600, textColor: colorBlack),

                                              WantText(text: 'Roll no. - ${request["rollNo"]}', fontSize: width * 0.0097, fontWeight: FontWeight.w400, textColor: colorBlack),

                                              WantText(text: 'Reason: ${request["reason"]}', fontSize: width * 0.0097, fontWeight: FontWeight.w400, textColor: colorBlack),

                                            ],
                                          ),
                                        ],
                                      ),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          GestureDetector(
                                            onTap: () {
                                              updateStatus(index, "Approved");
                                            },
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 22,
                                                  height: 22,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: status == "Approved" ? colorGreen : colorMainTheme,
                                                      width: 1,
                                                    ),
                                                    color: status == "Approved" ? colorGreen : colorGrey,
                                                  ),
                                                  child: status == "Approved"
                                                      ? Icon(Icons.circle, size: width * 0.005, color: colorWhite)
                                                      : null,
                                                ),
                                                SizedBox(width: width * 0.007),
                                                Text(
                                                  "Approved",
                                                  style: TextStyle(
                                                    color: status == "Approved" ? colorGreen : colorMainTheme,
                                                    fontSize: width * 0.0083,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: height * 0.004),


                                          GestureDetector(
                                            onTap: () {
                                              updateStatus(index, "Rejected");
                                            },
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 22,
                                                  height: 22,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: status == "Rejected" ? colorRedCalendar : colorMainTheme,
                                                      width: 1,
                                                    ),
                                                    color: status == "Rejected" ? colorRedCalendar : colorGrey,
                                                  ),
                                                  child: status == "Rejected"
                                                      ? Icon(Icons.circle, size: width * 0.005, color: colorWhite)
                                                      : null,
                                                ),
                                                SizedBox(width: width * 0.007),
                                                Text(
                                                  "Rejected",
                                                  style: TextStyle(
                                                    color: status == "Rejected" ? colorRedCalendar : colorMainTheme,
                                                    fontSize: width * 0.0083,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: height * 0.004),

                                          GestureDetector(
                                            onTap: () {
                                              updateStatus(index, "Pending");
                                            },
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 22,
                                                  height: 22,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: status == "Pending" ? colorEvent : colorMainTheme,
                                                      width: 1,
                                                    ),
                                                    color: status == "Pending" ? colorEvent : colorGrey,
                                                  ),
                                                  child: status == "Pending"
                                                      ? Icon(Icons.circle, size: width * 0.005, color: colorWhite)
                                                      : null,
                                                ),
                                                SizedBox(width: width * 0.007),
                                                Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                    color: status == "Pending" ? colorEvent : colorMainTheme,
                                                    fontSize: width * 0.0083,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: height*0.016),
                              ],
                            );
                          },
                        ),


                        CustomButton(Width: width, onTap: (){}, label: "Submit Approval"),
                        SizedBox(
                          height: height * 0.023,
                        ),




                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: width*0.004,),
            NoticWidget(),
          ],
        ),
      ),
    );
  }
  String _getMonthName(int month) {
    return ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"][month - 1];
  }
}

class CalendarWidget extends StatefulWidget {
  final DateTime initialDate;
  final Function(DateTime) onDateSelected;

  const CalendarWidget({
    required this.initialDate,
    required this.onDateSelected,
  });

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late DateTime focusedDay;
  late DateTime selectedDay;

  @override
  void initState() {
    super.initState();
    focusedDay = DateTime.now(); // Dynamic current date
    selectedDay = DateTime.now(); // Dynamic current date
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TableCalendar(
            firstDay: DateTime(2020),
            lastDay: DateTime(2030),
            focusedDay: focusedDay,
            currentDay: selectedDay,
            selectedDayPredicate: (day) => isSameDay(day, selectedDay),
            onDaySelected: (selected, focused) {
              setState(() {
                selectedDay = selected;
                focusedDay = focused;
              });
              widget.onDateSelected(selected);
            },
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              todayDecoration:
              BoxDecoration(color: Colors.blue.withOpacity(0.5), shape: BoxShape.circle),
              outsideDaysVisible: false,
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextFormatter: (date, locale) => "${_getMonthName(date.month)} ${date.year}",
            ),
          ),
        ],
      ),
    );
  }

  String _getMonthName(int month) {
    return [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ][month - 1];
  }
}
// class CalendarWidget extends StatefulWidget {
//   final DateTime initialDate;
//   final Function(DateTime) onDateSelected;
//
//   const CalendarWidget({
//     required this.initialDate,
//     required this.onDateSelected,
//   });
//
//   @override
//   _CalendarWidgetState createState() => _CalendarWidgetState();
// }
//
// class _CalendarWidgetState extends State<CalendarWidget> {
//   late DateTime focusedDay;
//   late DateTime selectedDay;
//
//   @override
//   void initState() {
//     super.initState();
//     focusedDay = DateTime.now();
//     selectedDay = DateTime.now();
//   }
//
//   void _showYearPicker(BuildContext context) async {
//     final DateTime? pickedYear = await showDialog<DateTime>(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//           child: Container(
//             padding: const EdgeInsets.all(16.0),
//             child: SizedBox(
//               width: width*0.277,
//               child: Expanded(
//                 child: YearPicker(
//                   firstDate: DateTime(2020),
//                   lastDate: DateTime(2030),
//                   selectedDate: focusedDay,
//                   onChanged: (DateTime newDate) {
//                     setState(() {
//                       focusedDay = DateTime(newDate.year, focusedDay.month, focusedDay.day);
//                     });
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//
//     if (pickedYear != null) {
//       setState(() {
//         focusedDay = DateTime(pickedYear.year, focusedDay.month, focusedDay.day);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TableCalendar(
//             firstDay: DateTime(2020),
//             lastDay: DateTime(2030),
//             focusedDay: focusedDay,
//             currentDay: selectedDay,
//             selectedDayPredicate: (day) => isSameDay(day, selectedDay),
//             onDaySelected: (selected, focused) {
//               setState(() {
//                 selectedDay = selected;
//                 focusedDay = focused;
//               });
//               widget.onDateSelected(selected);
//             },
//             calendarStyle: CalendarStyle(
//               selectedDecoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
//               todayDecoration:
//               BoxDecoration(color: Colors.blue.withOpacity(0.5), shape: BoxShape.circle),
//               outsideDaysVisible: false,
//             ),
//             headerStyle: HeaderStyle(
//               formatButtonVisible: false,
//               titleCentered: true,
//               titleTextFormatter: (date, locale) => "${_getMonthName(date.month)} ${date.year}",
//               titleTextStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             headerVisible: true,
//             daysOfWeekVisible: true,
//             calendarBuilders: CalendarBuilders(
//               headerTitleBuilder: (context, date) {
//                 return GestureDetector(
//                   onTap: () => _showYearPicker(context),
//                   child: Text(
//                     "${_getMonthName(date.month)} ${date.year}",
//                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   String _getMonthName(int month) {
//     return [
//       "January", "February", "March", "April", "May", "June",
//       "July", "August", "September", "October", "November", "December"
//     ][month - 1];
//   }
// }