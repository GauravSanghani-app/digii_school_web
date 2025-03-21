
import 'package:digi_school/student_portal/exam_screen/recent_activity_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:google_fonts/google_fonts.dart';


class MidTestScheduleScreen extends StatefulWidget {
  @override
  _MidTestScheduleScreenState createState() => _MidTestScheduleScreenState();
}

class _MidTestScheduleScreenState extends State<MidTestScheduleScreen> {


  final List _categories = [
    {
      "day": ": Monday",
      "date": ": 21 June 2024",
      "subject":": Mathematics",
      "icon": "assets/icons/calculator.png",
      "iconColor": colorCustomButton,

    },
    {
      "day": ": Wednesday",
      "date": ": 23 June 2024",
      "subject": ": Physics",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorGreenCalendar,

    },
    {
      "day": ": Friday",
      "date": ": 25 June 2024",
      "subject": ": English",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorPurple,

    },
    {
      "day": ": Monday",
      "date": ": 28 June 2024",
      "subject": ": Language",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorOrange,

    },
    {
      "day": ": Wednesday",
      "date": ": 30 June 2024",
      "subject": ": Chemistry",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorNotic,

    },
    {
      "day": ": Friday",
      "date": ": 01 July 2024",
      "subject":": Biology",
      "icon": "assets/icons/subject2.png",
      "iconColor": colorYellow,
    },
  ];


  @override
  Widget build(BuildContext context) {
    int day = 1;
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
                child: SingleChildScrollView(
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
                                text: "Test Schedule",
                                fontSize: width * 0.0166,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                          ],
                        ) ,
                      ),

                      SizedBox(height: height * 0.023),

                      Container(
                        width: width,
                        padding: EdgeInsets.all(width * 0.011),
                        decoration: BoxDecoration(
                          color: colorMainTheme,
                          borderRadius:
                          BorderRadius.circular(width * 0.0083),
                        ),
                        child: Text(
                          'Term : I - Mid Term Test\nTime: 09.00AM - 12.00PM\nRoom No: 9 ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w600,
                            color: colorWhite,
                            decoration: TextDecoration.underline,
                            decorationColor: colorWhite,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.023),


                      Column(
                        children: _categories.map(
                              (category) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: width * 0.01),
                              child: Container(
                                width: width,
                                padding: EdgeInsets.all(width * 0.009),
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
                                  borderRadius: BorderRadius.circular(width * 0.0083),
                                ),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: ImageIcon(
                                    AssetImage(category["icon"]),
                                    color: category["iconColor"],
                                    size: width * 0.013,
                                  ),
                                  title:

                                  Row(
                                    children: [
                                      WantText(
                                        text: 'Day',
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack,
                                        fontFamily: "Roboto",
                                      ),
                                      SizedBox(width: width *0.059),
                                      WantText(
                                        text: '${category["day"]}',
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack,
                                        fontFamily: "Roboto",
                                      ),
                                    ],
                                  ),
                                  subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          WantText(
                                            text: 'Date',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack,
                                            fontFamily: "Roboto",
                                          ),
                                          SizedBox(width: width *0.055),
                                          WantText(
                                            text: '${category["date"]}',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack,
                                            fontFamily: "Roboto",
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          WantText(
                                            text: 'Subject',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack,
                                            fontFamily: "Roboto",
                                          ),
                                          SizedBox(width: width *0.041),
                                          WantText(
                                            text: '${category["subject"]}',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack,
                                            fontFamily: "Roboto",
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  trailing: WantText(
                                    text: 'Day ${day++}',
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorCustomButton,
                                    fontFamily: "Roboto",
                                  ),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      )



                    ],
                  ),
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



}
