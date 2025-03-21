
import 'package:digi_school/student_portal/exam_screen/recent_activity_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:google_fonts/google_fonts.dart';


class QuizzesScheduleScreen extends StatefulWidget {
  @override
  _QuizzesScheduleScreenState createState() => _QuizzesScheduleScreenState();
}

class _QuizzesScheduleScreenState extends State<QuizzesScheduleScreen> {
  List<Map<String, dynamic>> quizzes = [
    {"subject": "Mathematics", "title": "Math Quiz: Algebra Basics", "subtitle": "Duration: 30 Minutes", "date": "Due Date: 7 January 2025", "statusColor": colorPinkText},
    {"subject": "Science", "title": "Science", "subtitle": "Chapter: Cells and Tissues", "date": "Date: 15 January 2025", "statusColor": colorBlack, "isUpcoming": true},
    {"subject": "Science", "title": "Science", "subtitle": "Chapter: Laws of Motion", "date": "Date: 15 January 2025", "statusColor": colorBlack, "isUpcoming": true},
    {"subject": "History", "title": "History", "subtitle": "Chapter: Ancient Civilizations.", "date": "Submitted Date: 1 January 2025", "statusColor": colorBlack, "isCompleted": true},
    {"subject": "English", "title": "English", "subtitle": "Poem: The Road Not Taken", "date": "Submitted Date: 3 January 2025", "statusColor": colorBlack, "isCompleted": true},
  ];

  List<String> subjects = ["Science", "Mathematics", "Chemistry", "Biology", "English", "History"];
  Set<String> selectedSubjects = {};
  List<Map<String, dynamic>> filteredQuizzes = [];

  @override
  void initState() {
    super.initState();
    filteredQuizzes = List.from(quizzes);
  }

  void applyFilter() {
    setState(() {
      if (selectedSubjects.isEmpty) {
        filteredQuizzes = List.from(quizzes);
      } else {
        filteredQuizzes = quizzes.where((quiz) => selectedSubjects.contains(quiz["subject"])).toList();
      }
    });
  }

  void showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Stack(
              children: [
                Positioned(
                  top: width*0.046,
                  right: width*0.243,
                  child: Material(
                    color: Colors.transparent,
                    child: SizedBox(
                      width: width*0.16,
                      child: Dialog(

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.only(
                              right: width * 0.0097,
                              left: width * 0.011,
                              top: width * 0.01,
                              bottom: width * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 8,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: "Filter",
                                      fontSize: width*0.0097, // Adjust based on preference
                                      fontWeight: FontWeight.w600,
                                      textColor: colorMainTheme),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Close dialog
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      size: height * 0.02,
                                      color: colorMainTheme,
                                    ),
                                  ),
                                ],
                              ),

                              ...subjects.map((subject) {
                                bool isSelected = selectedSubjects.contains(subject);
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (isSelected) {
                                        selectedSubjects.remove(subject);
                                      } else {
                                        selectedSubjects.add(subject);
                                      }
                                    });
                                  },
                                  child: Padding(
                                    padding:EdgeInsets.all(width*0.003),
                                    child: Align(

                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        subject,
                                        style: GoogleFonts.roboto(
                                          fontSize: width * 0.0097,
                                          color: isSelected ? colorMainTheme : colorBlack,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              SizedBox(height: height*0.013),  // Adjust size based on preference
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedSubjects.clear();
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        right: width * 0.005,
                                        left: width * 0.005,
                                        top: width * 0.001,
                                        bottom: width * 0.001,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: colorMainTheme,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: "Cancel",
                                          fontSize: width*0.0097,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorMainTheme),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: selectedSubjects.isNotEmpty
                                        ? () {
                                      applyFilter();
                                      Navigator.pop(context);
                                    }
                                        : null,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        right: width * 0.007,
                                        left: width * 0.007,
                                        top: width * 0.001,
                                        bottom: width * 0.001,
                                      ),
                                      decoration: BoxDecoration(
                                        color: selectedSubjects.isNotEmpty
                                            ? colorMainTheme
                                            : Colors.grey,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "Apply",
                                        style: TextStyle(
                                          fontSize: width*0.0097,

                                          color: colorWhite,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


      body: Row(
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
                      padding: EdgeInsets.all(width *0.005),
                      decoration: BoxDecoration(
                        color: colorHeaderCon,
                        borderRadius: BorderRadius.circular(width*0.022),
                      ),
                      child:Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios,color: colorBlack,size: height*0.026)),
                          SizedBox(width: width*0.27,),
                          WantText(
                              text: "Quizzes Schedule",
                              fontSize: width * 0.0166,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),
                        ],
                      ) ,
                    ),

                    SizedBox(height: height * 0.02),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        SizedBox(
                          width: width*0.56,
                          height: height * 0.05,
                          child: TextFormField(
                            decoration: InputDecoration(

                              prefixIcon:  Padding(
                                padding:EdgeInsets.all(11.0),
                                child: Image.asset("assets/images/search.png",width: width*0.0097,height: width*0.0097,),
                              ),

                              hintText: "Search Quiz",
                              hintStyle: TextStyle(
                                  color: colorDarkGreyText,
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400
                              ),
                              fillColor: colorWhite,
                              filled: true,
                              contentPadding: EdgeInsets.all(0),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(width * 0.5),
                                  borderSide: BorderSide(color: colorWhite)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(width * 0.5),
                                  borderSide: BorderSide(color: colorWhite)),
                            ),
                          ),
                        ),
                        SizedBox(width: width * 0.015),
                        GestureDetector(
                          onTap: () => showFilterDialog(context),
                          child: Container(
                            padding: EdgeInsets.all(width * 0.007),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(width * 0.0097),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/icons/filtericon.png",
                                    width: width * 0.015),
                                SizedBox(width: width * 0.015),
                                WantText(
                                  fontFamily: "Roboto",
                                  text: 'Filter',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorMainTheme,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (selectedSubjects.isEmpty)
                          WantText(
                            fontFamily: "Roboto",
                            text: 'Ongoing Quizzes',
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w500,
                            textColor: colorBlack,
                          ),
                        SizedBox(height: height*0.02),
                        quizList(filteredQuizzes.where((q) => !q.containsKey("isUpcoming") && !q.containsKey("isCompleted")).toList()),
                        if (selectedSubjects.isEmpty)
                          WantText(
                            fontFamily: "Roboto",
                            text: 'Upcoming Quizzes',
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w500,
                            textColor: colorBlack,
                          ),
                        SizedBox(height: height*0.02),
                        quizList(filteredQuizzes.where((q) => q.containsKey("isUpcoming")).toList()),
                        if (selectedSubjects.isEmpty)
                          WantText(
                            fontFamily: "Roboto",
                            text: 'Completed Quizzes',
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w500,
                            textColor: colorBlack,
                          ),
                        SizedBox(height: height*0.02),
                        quizList(filteredQuizzes.where((q) => q.containsKey("isCompleted")).toList()),
                      ],
                    ),



                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          RecentActivityWidget(),
        ],
      ),
    );
  }

  Widget quizList(List<Map<String, dynamic>> quizzes) {
    return Column(
      children: quizzes.map((quiz) => quizCard(quiz)).toList(),
    );
  }

  Widget quizCard(Map<String, dynamic> quiz) {

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(width *0.005),
          width: width,
          decoration: BoxDecoration(
            color: colorWhite,
            borderRadius: BorderRadius.circular(width*0.008),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WantText(
                    fontFamily: "Roboto",
                    text: quiz["title"],
                    fontSize: width * 0.011,
                    fontWeight: FontWeight.w600,
                    textColor: colorBlack,
                  ),
                  if (quiz.containsKey("isUpcoming"))
                    WantText(
                      fontFamily: "Roboto",
                      text: "Upcoming",
                      fontSize: width * 0.0083,
                      fontWeight: FontWeight.w600,
                      textColor: colorYellow,
                    ),
                  if (quiz.containsKey("isCompleted"))
                    Row(
                      children: [
                        WantText(
                          fontFamily: "Roboto",
                          text: "View",
                          fontSize: width * 0.0083,
                          fontWeight: FontWeight.w600,
                          textColor: colorGreen,
                        ),
                        SizedBox(width: width * 0.006),
                        Icon(Icons.arrow_forward,color: colorGreen,size: width*0.01,),
                      ],
                    ),
                ],
              ),
              SizedBox(height: height * 0.006),
              WantText(
                fontFamily: "Roboto",
                text: quiz["subtitle"],
                fontSize: width * 0.0097,
                fontWeight: FontWeight.w400,
                textColor: colorBlack,
              ),
              SizedBox(height: height * 0.006),
              WantText(
                fontFamily: "Roboto",
                text: quiz["date"],
                fontSize: width * 0.0083,
                fontWeight: FontWeight.w400,
                textColor: quiz["statusColor"],
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.016),
      ],
    );
  }

}
