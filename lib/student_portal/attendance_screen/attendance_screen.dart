import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:signature/signature.dart';
import 'package:table_calendar/table_calendar.dart';


class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {

  //piechart
  final dataMap = <String, double>{
    "Present": 22,
    "Absent":3,
  };

  //calender
  late Map<DateTime, String> attendanceStatus;
  int present = 0;
  int absent = 0;
  int holidays = 0;
  int leave = 0;
  DateTime currentMonth = DateTime.now();

  @override
  void initState() {
    super.initState();

    showList = _leaveDetails;
    print("init length : ${_leaveDetails.length}");

    // Initialize attendance data
    attendanceStatus = {};

    DateTime today = DateTime.now();
    int currentYear = today.year;

    // Function to add fixed holidays for a given year
    void addFixedHolidays(int year) {
      attendanceStatus[DateTime(year, 1, 26)] = 'Holiday'; // Republic Day
      attendanceStatus[DateTime(year, 8, 15)] = 'Holiday'; // Independence Day
      attendanceStatus[DateTime(year, 10, 2)] = 'Holiday'; // Gandhi Jayanti
      attendanceStatus[DateTime(year, 3, 10)] = 'Holiday'; // Holi
      attendanceStatus[DateTime(year, 3, 8)] = 'Holiday'; // Dhuleti
      attendanceStatus[DateTime(year, 11, 14)] = 'Holiday'; // Diwali
    }

    // Process past and current years
    for (int year = currentYear - 1; year <= currentYear; year++) {
      // Mark every Sunday as a holiday for the year
      for (int month = 1; month <= 12; month++) {
        int daysInMonth = DateTime(year, month + 1, 0).day;
        for (int day = 1; day <= daysInMonth; day++) {
          DateTime date = DateTime(year, month, day);
          if (date.weekday == DateTime.sunday) {
            attendanceStatus[date] = 'Holiday';
          }
        }
      }

      // Add fixed holidays for the year
      addFixedHolidays(year);
    }

    // Add leaves for the current year
    attendanceStatus[DateTime(2024, 1, 5)] = 'Absent';
    attendanceStatus[DateTime(2024, 1, 17)] = 'Absent';
    attendanceStatus[DateTime(2024, 1, 23)] = 'Absent';
    attendanceStatus[DateTime(2024, 2, 2)] = 'Absent';
    attendanceStatus[DateTime(2024, 2, 14)] = 'Absent';
    attendanceStatus[DateTime(2024, 2, 21)] = 'Absent';
    attendanceStatus[DateTime(2024, 3, 5)] = 'Absent';
    attendanceStatus[DateTime(2024, 3, 6)] = 'Absent';
    attendanceStatus[DateTime(2024, 3, 7)] = 'Absent';
    attendanceStatus[DateTime(2024, 4, 10)] = 'Absent';
    attendanceStatus[DateTime(2024, 4, 17)] = 'Absent';
    attendanceStatus[DateTime(2024, 4, 29)] = 'Absent';
    attendanceStatus[DateTime(2024, 5, 6)] = 'Absent';
    attendanceStatus[DateTime(2024, 5, 22)] = 'Absent';
    attendanceStatus[DateTime(2024, 5, 25)] = 'Absent';
    attendanceStatus[DateTime(2024, 6, 4)] = 'Absent';
    attendanceStatus[DateTime(2024, 6, 6)] = 'Absent';
    attendanceStatus[DateTime(2024, 6, 14)] = 'AbsentAbsent';
    attendanceStatus[DateTime(2024, 7, 10)] = 'Absent';
    attendanceStatus[DateTime(2024, 7, 15)] = 'Absent';
    attendanceStatus[DateTime(2024, 7, 30)] = 'Absent';
    attendanceStatus[DateTime(2024, 8, 8)] = 'Absent';
    attendanceStatus[DateTime(2024, 8, 14)] = 'Absent';
    attendanceStatus[DateTime(2024, 8, 16)] = 'Absent';
    attendanceStatus[DateTime(2024, 9, 6)] = 'Absent';
    attendanceStatus[DateTime(2024, 9, 7)] = 'Absent';
    attendanceStatus[DateTime(2024, 9, 28)] = 'Absent';
    attendanceStatus[DateTime(2024, 10, 1)] = 'Absent';
    attendanceStatus[DateTime(2024, 10, 8)] = 'Absent';
    attendanceStatus[DateTime(2024, 10, 16)] = 'Absent';
    attendanceStatus[DateTime(2024, 11, 6)] = 'Absent';
    attendanceStatus[DateTime(2024, 11, 16)] = 'Absent';
    attendanceStatus[DateTime(2024, 11, 26)] = 'Absent';
    attendanceStatus[DateTime(2024, 12, 2)] = 'Absent';
    attendanceStatus[DateTime(2024, 12, 3)] = 'Absent';
    attendanceStatus[DateTime(2024, 12, 4)] = 'Absent';
    attendanceStatus[DateTime(currentYear, 1, 1)] = 'Absent';
    attendanceStatus[DateTime(currentYear, 1, 6)] = 'Absent';

    // Mark all past dates up to today as "Present" if no other status exists
    for (int year = currentYear - 1; year <= currentYear; year++) {
      for (int month = 1;
      month <= (year == currentYear ? today.month : 12);
      month++) {
        int daysInMonth = DateTime(year, month + 1, 0).day;
        for (int day = 1;
        day <=
            (year == currentYear && month == today.month
                ? today.day
                : daysInMonth);
        day++) {
          DateTime date = DateTime(year, month, day);
          if (!attendanceStatus.containsKey(date)) {
            attendanceStatus[date] = 'Present';
          }
        }
      }
    }

    // Add fixed holidays for future years
    addFixedHolidays(currentYear + 1);
    getDayCategoryCount(currentMonth.month);
  }

  void getDayCategoryCount(int month) {
    int presentCount = 0;
    int absentCount = 0;
    int holidaysCount = 0;
    int leaveCount = 0;

    attendanceStatus.forEach(
          (key, value) {
        int keyMonth = (key).month;
        if (keyMonth == month) {
          if (value == "Present") {
            presentCount++;
          } else if (value == "Absent") {
            absentCount++;
          } else if (value == "Holiday") {
            holidaysCount++;
          } else if (value == "Leave") {
            leaveCount++;
          }
        }
      },
    );
    present = presentCount;
    absent = absentCount;
    holidays = holidaysCount;
    leave = leaveCount;
  }

// Color logic remains unchanged
  Color getAttendanceColor(String? status) {
    switch (status) {
      case 'Present':
        return colorGreenCalendar;
      case 'Absent':
        return colorRedCalendar;
      case 'Leave':
        return colorYellow;
      case 'Holiday':
        return colorDarkGreyText;
      default:
        return Colors.transparent;
    }
  }

  //datepicker
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();
  final TextEditingController _resonController = TextEditingController();
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: colorBlack,
    exportBackgroundColor: colorWhite,
  );

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

  //list leave
  int selectedIndex = -1;

  final List _leaveDetails = [
    {
      "date": "5 December 2024",
      "reason": "Student has high fever and stomach ache.",
      "status": "accepted",
    },
    {
      "date": "15 December 2024",
      "reason": "Student has high fever and stomach ache.",
      "status": "pending",
    },
    {
      "date": "01 December 2024",
      "reason": "Student Grand father passed away",
      "status": "rejected",
    },
    {
      "date": "21 December 2024",
      "reason": "Student Grand father passed away",
      "status": "accepted",
    },
    {
      "date": "10 December 2024",
      "reason": "Student Grand father passed away",
      "status": "accepted",
    },
  ];

  List showList = [];

  Color _getColorFromStatus(String status) {
    return status == 'accepted'
        ? colorGreen
        : status == 'pending'
        ? colorDarkBlueText
        : colorMaroonText;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


      body: Row(
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

                      WantText(
                          text: "March 2025 Attendance",
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack.withOpacity(0.7)),
                      SizedBox(height: height * 0.02),

                      Center(
                        child: Container(
                          width: width*0.3,

                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.01, vertical: width * 0.01),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(width*0.0125),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width * 0.138,
                                    height: width * 0.148,
                                    child: PieChart(
                                      // dataMap: {
                                      //   "Present": 5,
                                      //   "Absent": 3,
                                      //   "Holidays": 2,
                                      //   "Leave": 2,
                                      // },
                                      dataMap: dataMap,

                                      animationDuration:
                                      const Duration(milliseconds: 800),
                                      chartRadius: width * 0.0138,
                                      chartLegendSpacing: 32,
                                      colorList: [
                                        colorGreenCalendar,
                                        colorRedCalendar,
                                        colorDarkGreyText,
                                        colorYellow,
                                      ],
                                      chartType: ChartType.ring,
                                      ringStrokeWidth: width * 0.11,

                                      // centerText: "85%",
                                      chartValuesOptions: const ChartValuesOptions(
                                        showChartValueBackground: false,
                                        showChartValuesInPercentage: true,
                                        showChartValues: true,
                                        showChartValuesOutside: false,
                                        decimalPlaces: 0,
                                      ),
                                      legendOptions: const LegendOptions(
                                        showLegends: false,

                                      ),
                                    ),
                                  ),
                                  SizedBox(width: width * 0.02),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // _buildLegend(
                                      //     "Present", Colors.green, "$present days"),
                                      // _buildLegend(
                                      //     "Absent", Colors.red, "$absent days"),
                                      // _buildLegend(
                                      //     "Holidays", Colors.grey, "$holidays days"),
                                      // _buildLegend(
                                      //     "Leave", Colors.yellow, "$leave days"),
                                      _buildLegend("Present", colorGreenCalendar,
                                          "22 days"),
                                      _buildLegend(
                                          "Absent", colorRedCalendar, "3 days"),
                                      _buildLegend("Holidays", colorDarkGreyText,
                                          "4 days"),
                                      _buildLegend(
                                          "Leave", colorYellow, "0 days"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.023),
                      WantText(text: "Apply for Leave", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height * 0.02),

                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () =>
                                _selectDate(context, _fromDateController),
                            child: AbsorbPointer(
                              child: CustomTextFormField(
                                  color: colorWhite,
                                  suffixIcon: Icon(Icons.calendar_today),
                                  readOnly: true,
                                  labelText: 'From Date',
                                  hintText: 'mm/dd/yyyy',
                                  controller: _fromDateController),
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          GestureDetector(
                            onTap: () =>
                                _selectDate(context, _toDateController),
                            child: AbsorbPointer(
                              child: CustomTextFormField(color: colorWhite,
                                  suffixIcon: Icon(Icons.calendar_today),
                                  readOnly: true,
                                  labelText: 'To Date',
                                  hintText: 'mm/dd/yyyy',
                                  controller: _toDateController),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        padding: EdgeInsets.only(
                          top: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          // color: colorCustomButtonLabelWhite,
                          borderRadius: BorderRadius.all(
                              Radius.circular(width * 0.0083)),
                        ),
                        child: CustomTextFormField(
                          labelText: "Reason",
                          hintText: "Enter reason for leave...",
                          controller: _resonController,
                          color: colorWhite,
                          maxLines: 4,
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      WantText(
                          text: "Parent's Signature",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w600,
                          textColor: colorBlack.withOpacity(0.7)),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.13,
                        padding: EdgeInsets.all(height * 0.01),
                        decoration: BoxDecoration(
                          color: colorCustomButtonLabelWhite,
                          borderRadius: BorderRadius.all(
                              Radius.circular(width * 0.0083)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (_controller.isEmpty)
                              Row(
                                children: [
                                  WantText(
                                      text: "Sign here...",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                ],
                              ),
                            // Show hint if signature is empty

                            Expanded(
                              child: GestureDetector(
                                onPanStart: (_) {
                                  setState(
                                          () {}); // Update UI when user starts signing
                                },
                                child: Signature(
                                  controller: _controller,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                            if (_controller.isNotEmpty)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _controller.clear();
                                    },
                                    child: WantText(
                                        fontFamily: "Roboto",
                                        text: "Clear",
                                        fontSize: width * 0.035,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorRedText),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      CustomButton(
                          Width: width,
                          onTap: () {},
                          label: "Submit Application"),
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
          Container(
            height: height,
            width: width*0.24,
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(width*0.008),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.01, vertical: width * 0.02),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TableCalendar(
                      firstDay: DateTime(2024, 1, 1),
                      lastDay: DateTime(2025, 12, 31),
                      focusedDay: DateTime(2025, 1, 1),
                      onPageChanged: (focusedDay) {
                        currentMonth = focusedDay;
                        getDayCategoryCount(currentMonth.month);
                      },
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,titleTextStyle: TextStyle(color: colorBlack,fontWeight: FontWeight.w400,fontSize: width*0.0097)
                      ),
                      availableGestures: AvailableGestures.horizontalSwipe,
                      calendarBuilders: CalendarBuilders(
                        defaultBuilder: (context, day, focusedDay) {
                          if (day.isAfter(DateTime.now())) {
                            return Center(
                                child: Text('${day.day}')); // Future dates
                          }

                          final status = attendanceStatus[
                          DateTime(day.year, day.month, day.day)];
                          final color = getAttendanceColor(status);
                          return Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: color, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                '${day.day}',
                                style: TextStyle(
                                    color: color == Colors.transparent
                                        ? colorBlack
                                        : colorWhite,
                                    fontSize: width*0.01
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      calendarStyle: const CalendarStyle(
                        todayDecoration: BoxDecoration(
                            shape: BoxShape.circle, color: colorMainTheme),
                        outsideDaysVisible: false,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  WantText(text: "List of leaves", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          showList = _leaveDetails.where((leave) => leave["status"] == "accepted").toList();

                          selectedIndex = 0;
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            ImageIcon(
                              const AssetImage(
                                  'assets/icons/check-circle.png'),
                              size: width * 0.016,
                              color: colorBrightGreenText,
                            ),
                            SizedBox(width: width * 0.01),
                            WantText(
                              text: 'Accepted',
                              fontSize: width * 0.0083,
                              fontWeight: FontWeight.w500,
                              textColor: colorGreen,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      InkWell(
                        onTap: () {
                          showList = _leaveDetails.where((leave) => leave["status"] == "pending").toList();

                          selectedIndex = 1;
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            ImageIcon(
                              const AssetImage(
                                  'assets/icons/alert-circle.png'),
                              size: width * 0.016,
                              color: colorYellow,
                            ),
                            SizedBox(width: width * 0.01),
                            WantText(
                              text: 'Pending',
                              fontSize: width * 0.0083,
                              fontWeight: FontWeight.w500,
                              textColor: colorDarkBlueText,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      InkWell(
                        onTap: () {
                          showList = _leaveDetails.where((leave) => leave["status"] == "rejected").toList();

                          selectedIndex = 2;
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            ImageIcon(
                              const AssetImage(
                                  'assets/icons/cross-circle.png'),
                              size: width * 0.016,
                              color: colorLightRed,
                            ),
                            SizedBox(width: width * 0.01),
                            WantText(
                              text: 'Rejected',
                              fontSize: width * 0.0083,
                              fontWeight: FontWeight.w500,
                              textColor: colorMaroonText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: showList.map(
                          (leave) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.0172,
                          ),
                          child: Container(
                            width: width,
                            padding: EdgeInsets.all(width*0.011),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color.fromRGBO(246, 173, 43, 0.3), Colors.white],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ), // Rounded corners
                              border: Border(
                                left: BorderSide(color: Color.fromRGBO(246, 173, 43, 0.66), width: 4),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              // spacing: height * 0.01477,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: height * 0.01477,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      WantText(
                                        text: leave["date"],
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w600,
                                        textColor:
                                        _getColorFromStatus(
                                            leave["status"]),
                                        fontFamily: 'poppins',
                                      ),
                                      if (leave["status"] ==
                                          "accepted")
                                        ImageIcon(
                                          const AssetImage(
                                              'assets/icons/check-circle.png'),
                                          size: width * 0.016,
                                          color:
                                          colorBrightGreenText,
                                        ),
                                      if (leave["status"] ==
                                          "pending")
                                        ImageIcon(
                                          const AssetImage(
                                              'assets/icons/alert-circle.png'),
                                          size: width * 0.016,
                                          color: colorYellow,
                                        ),
                                      if (leave["status"] ==
                                          "rejected")
                                        ImageIcon(
                                          const AssetImage(
                                              'assets/icons/cross-circle.png'),
                                          size: width * 0.016,
                                          color: colorLightRed,
                                        ),
                                    ],
                                  ),
                                ),
                                WantText(
                                  text: leave["reason"],
                                  fontSize: width * 0.008,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  SizedBox(height: height * 0.023),
                  WantText(
                    text: "Instructions",
                    fontSize: width * 0.0125,
                    fontWeight: FontWeight.w500,
                    textColor: colorBlack,
                  ),
                  SizedBox(height: height * 0.02),
                  WantText(
                      textOverflow: TextOverflow.fade,
                      fontFamily: "Roboto",
                      text:
                      'If leave application is rejected, please contact the class teacher.',
                      fontSize: width * 0.0097,
                      fontWeight: FontWeight.w500,
                      textColor: colorDarkGreyText),
                  SizedBox(height: height * 0.0246),






                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildLegend(String title, Color color, String subtitle) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$title : ",
              style: TextStyle(
                color: colorBlack,
                fontSize: width*0.0097,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: colorBlack,
                fontSize: width*0.0097,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
