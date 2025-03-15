
import 'package:digi_school/dashboard/home_screen/notic_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';


class TimeTableScreen extends StatefulWidget {
  @override
  _TimeTableScreenState createState() => _TimeTableScreenState();
}

class _TimeTableScreenState extends State<TimeTableScreen> {
  DateTime selectedDate = DateTime(2025, 2, 5);
  final ScrollController _scrollController = ScrollController();

  Map<String, List<Map<String, String>>> scheduleData = {
    '2025-02-05': [
      {
        'time': '9:00 - 10:00',
        'class': '12th A : Mathematics',
        'topic': 'Determinants Chapter',
        'room': 'Room 101',
        'color': 'FFD700', // Yellow
      },
      {
        'time': '11:30 - 12:30',
        'class': '10th C : Geometry',
        'topic': 'Trigonometric Ratios',
        'room': 'Room 210',
        'color': 'FF6699', // Pink
      },
      {
        'time': '13:30 - 14:30',
        'class': '11th B : Algebra',
        'topic': 'Quadratic Equations',
        'room': 'Room 205',
        'color': '66CC66', // Green
      },
      {
        'time': '14:45 - 15:45',
        'class': '11th A : Statistics',
        'topic': 'Probability Basics',
        'room': 'Room 202',
        'color': '9966FF', // Purple
      },
    ],

    '2025-02-06': [
      {
        'time': '9:00 - 10:00',
        'class': '12th A : Mathematics',
        'topic': 'Determinants Chapter',
        'room': 'Room 101',
        'color': 'FFD700', // Yellow
      },
      {
        'time': '10:00 - 11:00',
        'class': '12th A : Mathematics',
        'topic': 'Determinants Chapter',
        'room': 'Room 101',
        'color': 'FFD700', // Yellow
      },
      {
        'time': '11:30 - 12:30',
        'class': '10th C : Geometry',
        'topic': 'Trigonometric Ratios',
        'room': 'Room 210',
        'color': 'FF6699', // Pink
      },
      {
        'time': '13:30 - 14:30',
        'class': '11th B : Algebra',
        'topic': 'Quadratic Equations',
        'room': 'Room 205',
        'color': '66CC66', // Green
      },
      {
        'time': '14:45 - 15:45',
        'class': '11th A : Statistics',
        'topic': 'Probability Basics',
        'room': 'Room 202',
        'color': '9966FF', // Purple
      },
    ],
  };


  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
    List<Map<String, String>> schedule = scheduleData[formattedDate] ?? [];

    return Scaffold(
      backgroundColor: colorWhite,


      body: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(width*0.011),
              child: Container(

                width: width*0.665,
                decoration: BoxDecoration(
                  color: colorBox,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      padding: EdgeInsets.all(width * 0.005),
                      decoration: BoxDecoration(
                        color: colorHeaderCon,
                        borderRadius: BorderRadius.circular(width * 0.022),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios, color: colorBlack, size: height * 0.026),
                          ),
                          SizedBox(width: width * 0.27),
                          WantText(
                            text: "Time Table",
                            fontSize: width * 0.0166,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.03),

                    _buildCalendar(),


                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ListView.builder(
                              padding: EdgeInsets.all(0.0),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: schedule.length,
                              itemBuilder: (context, index) {
                                return _buildScheduleCard(schedule[index]);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
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



  Widget _buildCalendar() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios, size: width*0.02,color: colorMainTheme,),
              onPressed: () {
                setState(() {
                  selectedDate = DateTime(selectedDate.year, selectedDate.month - 1, 1);
                });
              },
            ),

            WantText(text: DateFormat('MMMM yyyy').format(selectedDate), fontSize: width*0.0138, fontWeight: FontWeight.w700, textColor: colorBlack),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios, size: width*0.02,color: colorMainTheme,),
              onPressed: () {
                setState(() {
                  selectedDate = DateTime(selectedDate.year, selectedDate.month + 1, 1);
                });
              },
            ),
          ],
        ),
        SizedBox(height: height*0.016),
        Container(
          height: width * 0.05,
          color: colorBox,
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: DateTime(selectedDate.year, selectedDate.month + 1, 0).day,
            itemBuilder: (context, index) {
              DateTime date = DateTime(selectedDate.year, selectedDate.month, index + 1);
              bool isSelected = selectedDate.day == date.day;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedDate = date;
                  });
                },
                child: Row(
                  children: [
                    Container(

                      width:width*0.06,
                      padding: EdgeInsets.all(width*0.005),
                      decoration: BoxDecoration(
                        color: isSelected ? colorMainTheme : colorWhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          WantText(text: DateFormat.E().format(date), fontSize: width*0.0099, fontWeight: FontWeight.w500, textColor: isSelected ? colorWhite : colorDarkGreyText),

                          WantText(text: '${date.day}', fontSize: width*0.0125, fontWeight: FontWeight.w500, textColor: isSelected ? colorWhite : colorDarkGreyText),
                        ],
                      ),
                    ),
                    SizedBox(width: width*0.01),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: height*0.016),
      ],
    );
  }
  Widget _buildScheduleCard(Map<String, String> schedule) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child:
          WantText(text: schedule['time']!.split('-')[0], fontSize: width*0.011, fontWeight: FontWeight.w600, textColor: colorBlack),

        ),


        SizedBox(width: width*0.016),


        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),

            ),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 145, // Adjust based on schedule length
                  decoration: BoxDecoration(
                    color: Color(int.parse('0xFF${schedule['color'] ?? 'CCCCCC'}')), // Default grey
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                ),
                // Schedule Details
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(width*0.005),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WantText(text: schedule['time']!, fontSize: width*0.0097, fontWeight: FontWeight.w600, textColor: colorBlack),

                            WantText(text:schedule['room']!, fontSize: width*0.0083, fontWeight: FontWeight.w400, textColor: colorDarkGreyText),
                          ],
                        ),

                        SizedBox(height: height*0.003),
                        WantText(text: schedule['class']!, fontSize: width*0.011, fontWeight: FontWeight.w600, textColor: colorBlack),

                        WantText(text: schedule['topic']!, fontSize: width*0.0097, fontWeight: FontWeight.w500, textColor: colorDarkGreyText),


                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
