
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class LibraryReportScreen extends StatefulWidget {
  @override
  _LibraryReportScreenState createState() => _LibraryReportScreenState();
}

class _LibraryReportScreenState extends State<LibraryReportScreen> {
  final List<Map<String, dynamic>> subjects = [
    {'name': 'To Kill a Mockingbird', 'percentage': 85},
    {'name': '1984', 'percentage': 75},
    {'name': 'Pride and Prejudice', 'percentage': 60},
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

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  WantText(
                                      text: "Total Books",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Image.asset('assets/images/medals1.png',width: width*0.015,color: colorMainTheme,),

                                ],
                              ),
                              SizedBox(height: height*0.003),

                              WantText(
                                  text: "12,458",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),

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

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  WantText(
                                      text: "Books Out",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Image.asset('assets/images/libraryNoti2.png',width: width*0.018),

                                ],
                              ),
                              SizedBox(height: height*0.003),

                              WantText(
                                  text: "847",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),

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

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  WantText(
                                      text: "Overdue",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Icon(Icons.access_time_filled,color: colorOrange,size: width*0.017,)


                                ],
                              ),
                              SizedBox(height: height*0.003),

                              WantText(
                                  text: "23",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
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

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  WantText(
                                      text: "Active Users",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Image.asset('assets/icons/teacherhome1.png',width: width*0.017,color: colorPurple,),


                                ],
                              ),
                              SizedBox(height: height*0.003),

                              WantText(
                                  text: "2,845",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),

                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                  SizedBox(height: height*0.023),
                  Row(
                    children: [
                      Expanded(

                        child: Container(
                          height: width*0.285,
                          padding:  EdgeInsets.all(width*0.009),
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
                                  text: "Popular Books",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),
                              SizedBox(height: height*0.016),
                              Divider(color: colorGreyBorder, thickness: 1),
                              SizedBox(height: height*0.016),


                              ...subjects.map((subject) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                            child: LinearProgressIndicator(
                                              value: subject['percentage'] / 100,
                                              backgroundColor: Colors.grey[300],
                                              valueColor: AlwaysStoppedAnimation<Color>(colorCustomButton),
                                              minHeight: 8,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),

                                        WantText(
                                            text: subject['name'],
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w500,
                                            textColor: colorBlack),
                                      ],
                                    ),

                                    SizedBox(height: height*0.028,)
                                  ],
                                );
                              }).toList(),


                              SizedBox(height: height*0.028),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.011,),
                      Expanded(
                        child: Container(
                          height: width*0.285,

                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WantText(
                                  text: "Overdue Trends",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),
                              SizedBox(height: height*0.016),
                              Divider(color: colorGreyBorder, thickness: 1),
                              SizedBox(height: height*0.016),

                            ],
                          ),
                        ),
                      )
                    ],
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
                            text: "Course Materials",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
                        SizedBox(height: height*0.012,),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding:  EdgeInsets.all(width*0.011),
                                decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(width*0.008),
                                    border: Border.all(color: colorGreyBorder)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            text: "Library Usage Report",
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorBlack),
                                        SizedBox(height: height*0.005,),
                                        WantText(
                                            text: "Last updated: Jan 15, 2025",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreyTextLogIn),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("assets/icons/buttonup.png",width: width*0.012),
                                        SizedBox(width: width*0.005,),

                                        WantText(
                                            text: "Download",
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorCustomButton),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: width*0.01),

                            Expanded(
                              child: Container(
                                padding:  EdgeInsets.all(width*0.011),
                                decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(width*0.008),
                                    border: Border.all(color: colorGreyBorder)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        WantText(
                                            text: "Fine Collection Report",
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorBlack),
                                        SizedBox(height: height*0.005,),
                                        WantText(
                                            text: "Last updated: Jan 15, 2025",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreyTextLogIn),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("assets/icons/buttonup.png",width: width*0.012),
                                        SizedBox(width: width*0.005,),

                                        WantText(
                                            text: "Download",
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorCustomButton),
                                      ],
                                    ),

                                  ],
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
            ),
          ),
        ),
      ),
    );
  }

}

