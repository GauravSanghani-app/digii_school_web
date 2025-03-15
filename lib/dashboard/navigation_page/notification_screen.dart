
import 'package:digi_school/dashboard/navigation_page/add_post_screen.dart';
import 'package:digi_school/exam_screen/weekly_test_widget/mathematics_screen.dart';
import 'package:digi_school/exam_screen/weekly_test_widget/reminders_widget.dart';
import 'package:digi_school/home_screen/home_announcements_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';


class DashNotificationScreen extends StatefulWidget {
  @override
  _DashNotificationScreenState createState() => _DashNotificationScreenState();
}

class _DashNotificationScreenState extends State<DashNotificationScreen> {


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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back_ios,color: colorBlack,size: height*0.026)),
                            // SizedBox(width: width*0.27,),
                            WantText(
                                text: "Notifications",
                                fontSize: width * 0.0166,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                            GestureDetector(
                              onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> AddPostScreen()));
                              },

                              child: Column(
                                children: [
                                  Icon(Icons.add_circle,color: colorBlack,size: width*0.025,),
                                  WantText(
                                      text: 'Add',
                                      fontSize: width * 0.007,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack),
                                ],
                              ),
                            ),
                          ],
                        ) ,
                      ),

                      SizedBox(height: height * 0.03),

                      TextFormField(
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


                      SizedBox(height: height * 0.02),

                      Container(
                        width: width,
                        padding: EdgeInsets.all(width * 0.008),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width*0.0083),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [

                                Image.asset(
                                  "assets/images/delhischool.png",width: width * 0.034,),
                                SizedBox(width: width * 0.01),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "Delhi Public School",
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "15 mins ago",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: height * 0.009),
                            SizedBox(
                              width: width*0.19,
                              child: WantText(
                                  textOverflow: TextOverflow.fade,
                                  fontFamily: "Roboto",
                                  text:
                                  'Final exams for Class 12 will begin on 5th February 2025. Best of luck to all students!',
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack),
                            ),
                            SizedBox(height: height * 0.009),
                            Row(
                              children: [

                                Image.asset(
                                  "assets/images/paper.png",width: width * 0.0083,),
                                SizedBox(width: width * 0.005),
                                WantText(
                                    fontFamily: "Roboto",
                                    text: "View Exam Schedule",
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorMainTheme),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/like.png",width: width * 0.012,),

                                SizedBox(width: width * 0.003),
                                WantText(
                                    fontFamily: "Roboto",
                                    text: "120",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                                SizedBox(width: width * 0.01),
                                Image.asset(
                                  "assets/images/chat.png",width: width * 0.012,),
                                SizedBox(width: width * 0.003),

                                WantText(
                                    fontFamily: "Roboto",
                                    text: "25",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                                SizedBox(width: width * 0.009),
                                Image.asset(
                                  "assets/images/paperairplane.png",width: width * 0.012,),
                                SizedBox(width: width * 0.003),

                                WantText(
                                    fontFamily: "Roboto",
                                    text: "2",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                              ],
                            ),
                          ],
                        ),
                      ),



                      SizedBox(height: height * 0.02),

                      Container(
                        width: width,
                        padding: EdgeInsets.all(width * 0.008),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width*0.0083),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [

                                Image.asset(
                                  "assets/images/person3.png",width: width * 0.034),
                                SizedBox(width: width * 0.01),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "Principal Sharma ",
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorBlack),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "30 mins ago",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: height * 0.009),
                            WantText(
                                textOverflow: TextOverflow.fade,
                                fontFamily: "Roboto",
                                text:
                                '"A big congratulations to our students for their outstanding performance in the Math Olympiad. Keep up the great work!"',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                            SizedBox(height: height * 0.009),
                            Center(
                              child: Image.asset(
                                  "assets/images/studentprinci.png",width: width*0.194 ),
                            ),

                            SizedBox(height: height * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/like.png",width: width * 0.012,),

                                SizedBox(width: width * 0.003),
                                WantText(
                                    fontFamily: "Roboto",
                                    text: "120",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                                SizedBox(width: width * 0.01),
                                Image.asset(
                                  "assets/images/chat.png",width: width * 0.012,),
                                SizedBox(width: width * 0.003),

                                WantText(
                                    fontFamily: "Roboto",
                                    text: "25",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                                SizedBox(width: width * 0.009),
                                Image.asset(
                                  "assets/images/paperairplane.png",width: width * 0.012,),
                                SizedBox(width: width * 0.003),

                                WantText(
                                    fontFamily: "Roboto",
                                    text: "2",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                              ],
                            ),

                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.04),








                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          HomeAnnouncementsWidget(),
        ],
      ),
    );
  }
}
