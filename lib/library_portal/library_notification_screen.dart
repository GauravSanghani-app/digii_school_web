
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/custom_button.dart';

class LibraryNotificationScreen extends StatefulWidget {
  @override
  _LibraryNotificationScreenState createState() => _LibraryNotificationScreenState();
}

class _LibraryNotificationScreenState extends State<LibraryNotificationScreen> {




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
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WantText(
                    text: "Library Notification ",
                    fontSize: width * 0.016,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width*0.008),
                    border: Border(
                      left: BorderSide(color: colorRedCalendar, width: 4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset('assets/images/libraryNoti1.png',width: width*0.030,),
                      SizedBox(width: width * 0.010),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          WantText(
                              fontFamily: "Roboto",
                              text: 'Overdue Book: "The Great Gatsby"',
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          SizedBox(height: height*0.004),
                          WantText(
                              fontFamily: "Roboto",
                              text: "Student: Sarah Johnson (Grade 11-A)",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                          SizedBox(height: height*0.004),

                          WantText(
                              fontFamily: "Roboto",
                              text: "Due: Jan 15, 2025 (5 days overdue)",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorRedText),
                        ],
                      ),

                      Spacer(),
                      Row(
                        children: [

                          CustomButton(Width: width*0.096, onTap: (){},label: "Send Reminder",fontSize: width*0.0097,paddingVertical: height*0.007,),
                          SizedBox(width: width*0.010,),
                          CustomButton(Width: width*0.072, onTap: (){},label: "Apply Fine",fontSize: width*0.0097,borderColor: colorRedCalendar,backgroundColor: colorRedCalendar,paddingVertical: height*0.007,)
                          ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width*0.008),
                    border: Border(
                      left: BorderSide(color: colorMainTheme, width: 4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset('assets/images/teacherPer2.png',width: width*0.030,),
                      SizedBox(width: width * 0.010),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          WantText(
                              fontFamily: "Roboto",
                              text: 'Book Reservation Request',
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          SizedBox(height: height*0.004),
                          WantText(
                              fontFamily: "Roboto",
                              text: "Student: Mike Chen (Grade 10-B)",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                          SizedBox(height: height*0.004),

                          WantText(
                              fontFamily: "Roboto",
                              text: 'Book: "To Kill a Mockingbird"',
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorDarkGreyText),
                        ],
                      ),

                      Spacer(),
                      Row(
                        children: [

                          CustomButton(Width: width*0.060, onTap: (){},label: "Approve",fontSize: width*0.0097,borderColor: colorGreenCalendar,backgroundColor: colorGreenCalendar,paddingVertical: height*0.007,),
                          SizedBox(width: width*0.010,),
                          CustomButton(Width: width*0.056, onTap: (){},label: "Deny",fontSize: width*0.0097,borderColor: colorDarkGreyText,backgroundColor: colorDarkGreyText,paddingVertical: height*0.007,)
                          ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width*0.008),
                    border: Border(
                      left: BorderSide(color: colorGreenCalendar, width: 4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset('assets/images/libraryNoti2.png',width: width*0.030,),
                      SizedBox(width: width * 0.010),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          WantText(
                              fontFamily: "Roboto",
                              text: 'New Book Added to Library',
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          SizedBox(height: height*0.004),
                          WantText(
                              fontFamily: "Roboto",
                              text: 'The Psychology of Money" by Morgan Housel',
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                          SizedBox(height: height*0.004),

                          WantText(
                              fontFamily: "Roboto",
                              text: "Category: Finance, Self-Help",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorDarkGreyText),
                        ],
                      ),

                      Spacer(),
                      Icon(Icons.check,color: colorGreenCalendar,size: width*0.014,)

                    ],
                  ),
                ),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width*0.008),
                    border: Border(
                      left: BorderSide(color: colorPurple, width: 4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset('assets/images/libraryNoti3.png',width: width*0.030,),
                      SizedBox(width: width * 0.010),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          WantText(
                              fontFamily: "Roboto",
                              text: 'System Maintenance Notice',
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          SizedBox(height: height*0.004),
                          WantText(
                              fontFamily: "Roboto",
                              text: "Library system will be under maintenance",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                          SizedBox(height: height*0.004),

                          WantText(
                              fontFamily: "Roboto",
                              text: "Schedule: Jan 20, 2025 (10:00 PM - 2:00 AM)",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorPurple),
                        ],
                      ),

                      Spacer(),
                     Icon(Icons.close,color: colorPurple,size: width*0.014,)
                    ],
                  ),
                ),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width*0.008),
                    border: Border(
                      left: BorderSide(color: colorEvent, width: 4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset('assets/images/libraryNoti4.png',width: width*0.030,),
                      SizedBox(width: width * 0.010),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          WantText(
                              fontFamily: "Roboto",
                              text: 'Outstanding Fine Payment',
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorBlack),
                          SizedBox(height: height*0.004),
                          WantText(
                              fontFamily: "Roboto",
                              text: "Student: Alex Thompson (Grade 12-C)",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w400,
                              textColor: colorGreyTextLogIn),
                          SizedBox(height: height*0.004),

                          WantText(
                              fontFamily: "Roboto",
                              text: "Amount Due: \$5.50",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorEvent),
                        ],
                      ),

                      Spacer(),

                          CustomButton(Width: width*0.096, onTap: (){},label: "Process Payment",fontSize: width*0.0097,borderColor: colorEvent,backgroundColor: colorEvent,paddingVertical: height*0.007,)

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

