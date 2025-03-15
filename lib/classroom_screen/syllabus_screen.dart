import 'package:digi_school/classroom_screen/announcements_widget.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';


class SyllabusScreen extends StatefulWidget {
  @override
  _SyllabusScreenState createState() => _SyllabusScreenState();
}

class _SyllabusScreenState extends State<SyllabusScreen> {

  bool _expanded = false;
  int _selectedIndex = -1;

  final List<Map<String, String>> _subjects = [
    {"name": "Physics", "icon": "assets/icons/subject2.png"},
    {"name": "Mathematics", "icon": "assets/icons/calculator.png"},
    {"name": "English", "icon": "assets/icons/subject3.png"},
    {"name": "Biology", "icon": "assets/icons/subject5.png"},
    {"name": "Chemistry", "icon": "assets/icons/subject4.png"},

  ];

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
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.009),
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
                                text: "Syllabus",
                                fontSize: width * 0.0166,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                          ],
                        ) ,
                      ),

                      SizedBox(height: height * 0.023),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width*0.008),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Container(
                              width: width*0.204,
                              padding: EdgeInsets.all(width *0.005),
                              margin: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                              decoration: BoxDecoration(
                                color: colorBoxBackground,
                                borderRadius: BorderRadius.circular(width*0.008),
                                border: Border(
                                  bottom: BorderSide(color: colorGrey,),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorGrey.withOpacity(0.7),
                                    offset: Offset(0, 1), // Shadow below the container
                                    blurRadius: 1,
                                  ),
                                ],
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: [
                                  Image.asset('assets/icons/class1.png',width: width*0.03,),
                                  SizedBox(width: width*0.01,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "Pending Assignments",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorDarkGreyText),
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "4",
                                          fontSize: width * 0.0138,
                                          fontWeight: FontWeight.w700,
                                          textColor: colorPinkText),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: width*0.204,
                              padding: EdgeInsets.all(width *0.005),
                              margin: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                              decoration: BoxDecoration(
                                color: colorBoxBackground,
                                borderRadius: BorderRadius.circular(width*0.008),
                                border: Border(
                                  bottom: BorderSide(color: colorGrey,),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorGrey.withOpacity(0.7),
                                    offset: Offset(0, 1), // Shadow below the container
                                    blurRadius: 1,
                                  ),
                                ],
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('assets/icons/class2.png',width: width*0.03,),
                                  SizedBox(width: width*0.01,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "Completed Assignments",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorDarkGreyText),
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "12",
                                          fontSize: width * 0.0138,
                                          fontWeight: FontWeight.w700,
                                          textColor: colorGreenCalendar),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: width*0.204,
                              padding: EdgeInsets.all(width *0.005),
                              margin: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                              decoration: BoxDecoration(
                                color: colorBoxBackground,
                                borderRadius: BorderRadius.circular(width*0.008),
                                border: Border(
                                  bottom: BorderSide(color: colorGrey,),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorGrey.withOpacity(0.7),
                                    offset: Offset(0, 1), // Shadow below the container
                                    blurRadius: 1,
                                  ),
                                ],
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('assets/icons/class3.png',width: width*0.03,),
                                  SizedBox(width: width*0.01,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "Completed Assignments",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorDarkGreyText),
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "2",
                                          fontSize: width * 0.0138,
                                          fontWeight: FontWeight.w700,
                                          textColor: colorYellow),
                                    ],
                                  ),
                                ],
                              ),
                            ),



                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.023),
                      WantText(text: "On-Going Assignment", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      Container(
                        width: width,
                        padding: EdgeInsets.all(width *0.009),

                        decoration: BoxDecoration(
                          color: colorWhite,
                          boxShadow: [
                            BoxShadow(
                              color: colorBoxshadow.withOpacity(0.1), // Light shadow
                              blurRadius: 2, // Soft shadow effect
                              offset: Offset(0, 2), // Shadow only at the bottom
                              spreadRadius: 0, // No spread on sides
                            ),
                          ],
                          borderRadius: BorderRadius.circular(width*0.0083),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            WantText(
                                text: 'Essay Writing Test',
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack),

                            SizedBox(height: height*0.005,),
                            WantText(
                                text: 'Scheduled for: Dec 26, 2024',
                                fontFamily: "Roboto",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                            SizedBox(height: height*0.005,),

                            WantText(
                                text: 'Time: 1:00pm - 2:00pm',
                                fontFamily: "Roboto",
                                fontSize: width * 0.0083,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.023),
                      WantText(text: "Completed  Assessment", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      Container(
                        width: width,
                        padding: EdgeInsets.all(width *0.009),

                        decoration: BoxDecoration(
                          color: colorWhite,
                          boxShadow: [
                            BoxShadow(
                              color: colorBoxshadow.withOpacity(0.1), // Light shadow
                              blurRadius: 2, // Soft shadow effect
                              offset: Offset(0, 2), // Shadow only at the bottom
                              spreadRadius: 0, // No spread on sides
                            ),
                          ],
                          borderRadius: BorderRadius.circular(width*0.0083),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                    text: 'Chemistry',
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                                WantText(
                                    text: 'Submitted',
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w700,
                                    textColor: colorGreen),
                              ],
                            ),

                            SizedBox(height: height*0.005,),
                            WantText(
                                text: 'Lab Report on Coordination Compounds.',
                                fontFamily: "Roboto",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                            SizedBox(height: height*0.005,),

                            WantText(
                                text: 'Time: 1:00pm - 2:00pm',
                                fontFamily: "Roboto",
                                fontSize: width * 0.0083,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        width: width,
                        padding: EdgeInsets.all(width *0.009),

                        decoration: BoxDecoration(
                          color: colorWhite,
                          boxShadow: [
                            BoxShadow(
                              color: colorBoxshadow.withOpacity(0.1), // Light shadow
                              blurRadius: 2, // Soft shadow effect
                              offset: Offset(0, 2), // Shadow only at the bottom
                              spreadRadius: 0, // No spread on sides
                            ),
                          ],
                          borderRadius: BorderRadius.circular(width*0.0083),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                    text: 'Sanskrit',
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                                WantText(
                                    text: 'Submitted',
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w700,
                                    textColor: colorGreen),
                              ],
                            ),

                            SizedBox(height: height*0.005,),
                            WantText(
                                text: 'Recitation of Shlokas.',
                                fontFamily: "Roboto",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                            SizedBox(height: height*0.005,),

                            WantText(
                                text: 'Completed: Dec 16, 2024',
                                fontFamily: "Roboto",
                                fontSize: width * 0.0083,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.023),
                      WantText(text: "Have Questions?", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      GestureDetector(
                        onTap: () => setState(() => _expanded = !_expanded),
                        child: Container(
                          width: width,
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.01,
                            vertical: height * 0.009,
                          ),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.all(Radius.circular(width * 0.0083)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WantText(
                                text: 'Select the subject',
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack,
                                // fontFamily: "Poppins",
                              ),
                              if (_expanded)
                              // ImageIcon(
                              //   const AssetImage('assets/icons/homework_arrow_up.png'),
                              //   size: width * 0.041,
                              //   color: colorMainTheme,
                              // ),
                                Icon(Icons.keyboard_arrow_up,color: colorMainTheme,size: width*0.023),
                              if (!_expanded)
                                Icon(Icons.keyboard_arrow_down,color: colorMainTheme,size: width*0.023),
                            ],
                          ),
                        ),
                      ),SizedBox(height: height*0.016,),
                      if (_expanded)
                        Column(
                          // spacing: height * 0.0147,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              // spacing: height * 0.00123,
                              children: List.generate(
                                _subjects.length,
                                    (index) {
                                  return GestureDetector(
                                    onTap: () => setState(() {
                                      _selectedIndex = _selectedIndex == index ? -1 : index;
                                    }),
                                    child: Container(
                                      width: width,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.01,
                                        vertical: height * 0.009,
                                      ),
                                      decoration: BoxDecoration(
                                        color: colorWhite,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(width * 0.0083),
                                        ),
                                        border: Border.fromBorderSide(
                                            _selectedIndex == index
                                                ? const BorderSide(color: colorCustomButton)
                                                :   BorderSide(color: colorGrey.withOpacity(0.4))
                                        ),
                                      ),
                                      child: Row(
                                        children: [

                                          Image.asset(
                                            _subjects[index]["icon"]!, // Use the icon path from the list
                                            width: width * 0.010,
                                            height: width * 0.010,
                                          ),
                                          SizedBox(width: width*0.016,),
                                          WantText(
                                            text: _subjects[index]["name"]!,
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            if (_selectedIndex != -1)SizedBox(height: height*0.018,),
                            if (_selectedIndex != -1)
                              Container(
                                padding: EdgeInsets.symmetric(vertical: width * 0.01,horizontal: height * 0.01),
                                decoration: BoxDecoration(
                                  color: colorWhite,
                                  borderRadius: BorderRadius.circular(width * 0.0083),
                                ),
                                child:TextFormField(maxLines: 3,
                                  decoration: InputDecoration(
                                    hintText: 'Type your question here...',
                                    hintStyle: TextStyle(fontSize: width * 0.0097,color: colorDarkGreyText,fontWeight: FontWeight.w400,),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            if (_selectedIndex != -1)SizedBox(height: height*0.018,),
                            if (_selectedIndex != -1)
                              CustomButton(Width: width, onTap: (){}, label: "submit"),
                          ],
                        ),

                      SizedBox(height: height*0.1),

                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          AnnouncementsWidget(),
        ],
      ),
    );
  }
}
