
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LibraryDashboardScreen extends StatefulWidget {
  @override
  _LibraryDashboardScreenState createState() => _LibraryDashboardScreenState();
}

class _LibraryDashboardScreenState extends State<LibraryDashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(width*0.008),
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
                    WantText(
                        text: "Dashboard Overview",
                        fontSize: width * 0.0138,
                        fontWeight: FontWeight.w400,
                        textColor: colorBlack),
                    // SizedBox(height: height*0.007,),
                    WantText(
                        text: "Welcome back, Sarah!",
                        fontSize: width * 0.011,
                        fontWeight: FontWeight.w400,
                        textColor: colorDarkGreyText),
                    SizedBox(height: height*0.023,),

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

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: "Total Books",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                    WantText(
                                        text: "12,458",
                                        fontSize: width * 0.0166,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),
                                  ],
                                ),
                                Image.asset('assets/images/libraryDash1.png',width: width*0.035,),
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

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: "Books Issued",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                    WantText(
                                        text: "1,245",
                                        fontSize: width * 0.0166,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),
                                  ],
                                ),
                                Image.asset('assets/images/libraryDash2.png',width: width*0.035,),
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

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: "Overdue Books",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                    WantText(
                                        text: "84",
                                        fontSize: width * 0.0166,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),
                                  ],
                                ),
                                Image.asset('assets/images/libraryDash3.png',width: width*0.035,),
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

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        text: "Active Users",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                    WantText(
                                        text: "2,845",
                                        fontSize: width * 0.0166,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),
                                  ],
                                ),
                                Image.asset('assets/images/libraryDash4.png',width: width*0.035,),
                              ],
                            ),
                          ),
                        ),



                      ],
                    ),
                    SizedBox(height: height*0.023,),

                    Container(
                      width: width,
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
                      child:  Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              WantText(
                                  text: 'Recent Activities',
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack),
                              WantText(
                                  text: "View All",
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorCustomButton),
                            ],
                          ),
                          SizedBox(height: height*0.02,),
                          Row(
                            children: [
                              Image.asset('assets/images/libraryDash5.png',width: width*0.025,),

                              SizedBox(width: width*0.012,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: 'Book returned: "The Great Gatsby"',
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                  WantText(
                                      text: "by John Smith • 2 hours ago",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: height*0.018,),

                          Row(
                            children: [
                              Image.asset('assets/images/libraryDash6.png',width: width*0.025,),

                              SizedBox(width: width*0.012,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: 'Book issued: "To Kill a Mockingbird"',
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                  WantText(
                                      text: "by Emma Davis • 3 hours ago",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: height*0.018,),

                          Row(
                            children: [
                              Image.asset('assets/images/libraryDash7.png',width: width*0.025,),

                              SizedBox(width: width*0.012,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: 'New member registered',
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                  WantText(
                                      text: "Michael Brown • 5 hours ago",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                ],
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
          SizedBox(width: width*0.004,),
          Container(
            height: height,
            width: width*0.24,
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(width*0.008),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.023),
                WantText(text: "Notifications", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 242, 242, 1),
                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/libraryDash8.png',width: width*0.012,),
                      SizedBox(width: width * 0.012),

                      WantText(
                          text: '5 books are overdue today',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorRedText),
                    ],
                  ),
                ),

                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(239, 246, 255, 1),

                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/quizeerror.png',width: width*0.012,),
                      SizedBox(width: width * 0.012),

                      WantText(
                          text: 'New books added to Science section',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorCustomButton),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 253, 245, 1),
                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/libraryDash9.png',width: width*0.012,),
                      SizedBox(width: width * 0.012),

                      WantText(
                          text: 'Monthly report generated',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorGreenCalendar),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}

