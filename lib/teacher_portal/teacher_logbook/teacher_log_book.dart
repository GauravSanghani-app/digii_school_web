
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';


import '../../utils/custom_textformfield.dart';

class TeacherLogBook extends StatefulWidget {
  @override
  _TeacherLogBookState createState() => _TeacherLogBookState();
}

class _TeacherLogBookState extends State<TeacherLogBook> {

  final List<Map<String, dynamic>> classData = const [
    {
      'className': 'Class 8A',
      'date': 'March 15, 2025',
      'title': 'Introduction to Quadratic Equations',
      'topicsCovered': 'Standard Form, Roots',
      'studentsPresent': '28/30',
      'duration': '45 minutes',
      'notes': 'Students showed good understanding of the concept. Homework assigned from textbook pages 45-47.',
    },
    {
      'className': 'Class 8B',
      'date': 'March 15, 2025',
      'title': 'Linear Equations Review',
      'topicsCovered': 'Solving Equations',
      'studentsPresent': '25/28',
      'duration': '45 minutes',
      'notes': 'Review session conducted. Quiz planned for next class.',
    },
  ];

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


  final int totalEntries = 24;
  final int entriesPerPage = 2;
  int currentPage = 1;

  int get totalPages => (totalEntries / entriesPerPage).ceil();

  void goToPage(int page) {
    if (page >= 1 && page <= totalPages) {
      setState(() {
        currentPage = page;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int startEntry = (currentPage - 1) * entriesPerPage + 1;
    int endEntry = currentPage * entriesPerPage;
    if (endEntry > totalEntries) {
      endEntry = totalEntries;
    }
    int startPage = (currentPage - 1) ~/ 3 * 3 + 1;
    int endPage = (startPage + 2).clamp(1, totalPages);

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
                            text: "Math Class Logbook",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
                        SizedBox(height: height*0.005,),

                        WantText(
                            text: "Track and manage your class activities",
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w400,
                            textColor: colorGreyTextLogIn),
                      ],
                    ),
                    Row(
                      children: [

                        Row(
                          children: [
                            Icon(Icons.calendar_today_outlined,color: colorBlack,size: width*0.0083,),
                            SizedBox(width: width*0.008,),
                            WantText(
                                text: "Academic Year 2024-2025",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                          ],
                        ),
                        SizedBox(width: width*0.01,),

                        CustomButton(
                          Width: width*0.091,
                          onTap: (){},
                          paddingVertical: height*0.006,
                          labelWidget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,color: colorWhite,size: width*0.012,),
                              SizedBox(width: width*0.008,),
                              WantText(
                                  text: "New Entry",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorWhite),
                            ],
                          ),
                        )
                        
                      ],
                    )
                  ],
                ),

                SizedBox(height: height * 0.02),

                Row(
                  children: [
                    Expanded(
                      child: Container(

                        padding:  EdgeInsets.all(width*0.007),
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
                                text: "Select Class",
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                            Icon(Icons.keyboard_arrow_down,color: colorBlack,size: width*0.017,)

                          ],
                        ),
                      ),
                    ) ,
                    SizedBox(width: width*0.008,),
                    Expanded(
                      child: Container(

                        padding:  EdgeInsets.all(width*0.007),
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
                        text: "Select Topic",
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w400,
                            textColor: colorBlack),
                            Icon(Icons.keyboard_arrow_down,color: colorBlack,size: width*0.017,)

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: width*0.008,),

                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            _selectDate(context, _dateController),
                        child: AbsorbPointer(
                          child: CustomTextFormField(
                              color: colorWhite,
                              suffixIcon: Icon(Icons.calendar_today),
                              readOnly: true,
                              showBorder: false,
                              hintText: 'mm/dd/yyyy',
                              controller: _dateController),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: height * 0.02),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding:EdgeInsets.all(0.0),
                  itemCount: classData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: height*0.023),
                      padding:  EdgeInsets.all(width*0.011),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: width*0.0083, vertical: height*0.005),
                                decoration: BoxDecoration(
                                  color: colorLightBlueCon,
                                  borderRadius: BorderRadius.circular(width*0.011),
                                ),
                                child:
                                WantText(
                                    text: classData[index]['className'],
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorCustomButton),
                              ),
                              SizedBox(width: width*0.016,),
                              WantText(
                                  text: classData[index]['date'],
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorDarkGreyText),
                              Spacer(),
                              Row(
                                children: [
                                  Image.asset("assets/icons/teacheredit.png",width: width*0.0125,),
                                  SizedBox(width: width*0.016,),

                                  Image.asset("assets/icons/teacherdelete.png",width: width*0.0125,),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: height*0.008),

                          WantText(
                              text: classData[index]['title'],
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w600,
                              textColor: colorBlack),
                          SizedBox(height: height*0.008),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(width*0.009),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(width*0.008),bottomLeft:Radius.circular(width*0.008) ),
                                      color: colorLightGrey,
                                    border: Border(right: BorderSide(width: 1,color: colorDivider))
                                
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      WantText(
                                          text: "Topics Covered",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorGreyTextLogIn),

                                      SizedBox(height: height*0.006),
                                      WantText(
                                          text: classData[index]['topicsCovered'],
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorBlack),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  
                                  padding: EdgeInsets.all(width*0.009),
                                  decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.only(topLeft: Radius.circular(width*0.008),bottomLeft:Radius.circular(width*0.008) ),
                                      color: colorLightGrey,
                                      // border: Border(right: BorderSide(width: 1,color: colorGreyTextFieldBorder))
                                
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      WantText(
                                          text: "Students Present",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorGreyTextLogIn),

                                      SizedBox(height: height*0.006),
                                      WantText(
                                          text: classData[index]['studentsPresent'],
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorBlack),

                                    ],
                                  ),
                                ),
                              ),
                              
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(width*0.009),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(width*0.008),bottomRight:Radius.circular(width*0.008) ),
                                      color: colorLightGrey,
                                      border: Border(left: BorderSide(width: 1,color: colorDivider))
                                
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      WantText(
                                          text: "Duration",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorGreyTextLogIn),

                                      SizedBox(height: height*0.006),
                                      WantText(
                                          text: classData[index]['duration'],
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorBlack),

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: height*0.008),
                          WantText(
                              text: classData[index]['notes'],
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),

                        ],
                      ),
                    );
                  },
                ),
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
                      Text('Showing $startEntry-$endEntry of $totalEntries entries'),
                      Row(
                        children: [
                          // Previous Button
                          ElevatedButton(
                            onPressed: currentPage > 1 ? () => goToPage(currentPage - 1) : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200],
                              foregroundColor: Colors.black,
                            ),
                            child: const Text('Previous'),
                          ),
                          const SizedBox(width: 8),

                          // Page Numbers (Only 3 at a time)
                          ...List.generate(
                            (endPage - startPage + 1),
                                (index) {
                              int pageNumber = startPage + index;
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                child: ElevatedButton(
                                  onPressed: () => goToPage(pageNumber),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: currentPage == pageNumber
                                        ? Colors.blue
                                        : Colors.grey[200],
                                    foregroundColor: currentPage == pageNumber
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  child: Text('$pageNumber'),
                                ),
                              );
                            },
                          ),

                          const SizedBox(width: 8),

                          // Next Button
                          ElevatedButton(
                            onPressed: currentPage < totalPages
                                ? () => goToPage(currentPage + 1)
                                : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200],
                              foregroundColor: Colors.black,
                            ),
                            child: const Text('Next'),
                          ),
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

