
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TeacherHomeScreen extends StatefulWidget {
  @override
  _TeacherHomeScreenState createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {

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
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(width*0.016),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(width*0.008),bottomLeft:Radius.circular(width*0.008) ),
                                color: colorWhite,
                                border: Border.all(width: 1,color: colorGreyTextFieldBorder)

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      WantText(
                                          text: "Total Students",
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorDarkGreyText),
                                      Image.asset("assets/icons/teacherhome1.png",width: width*0.0125,),

                                    ],
                                  ),
                                  SizedBox(height: height * 0.005),

                                  WantText(
                                      text: "156",
                                      fontSize: width * 0.016,
                                      fontWeight: FontWeight.w700,
                                      textColor: colorBlack),
                                  SizedBox(height: height * 0.005),

                                  WantText(
                                      text: "+12 from last month",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorGreen),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(width*0.016),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                  border: Border.all(width: 0.5,color: colorGreyTextFieldBorder)

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      WantText(
                                          text: "Today's Attendance",
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorDarkGreyText),
                                      Image.asset("assets/icons/teacherhome2.png",width: width*0.0125,),

                                    ],
                                  ),
                                  SizedBox(height: height * 0.005),

                                  WantText(
                                      text: "96%",
                                      fontSize: width * 0.016,
                                      fontWeight: FontWeight.w700,
                                      textColor: colorBlack),
                                  SizedBox(height: height * 0.005),

                                  WantText(
                                      text: "Higher than usual",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorGreen),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(width*0.016),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(width*0.008),bottomRight:Radius.circular(width*0.008) ),
                                color: colorWhite,
                                  border: Border.all(width: 0.5,color: colorGreyTextFieldBorder)

                              ),
                              child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      WantText(
                                          text: "Pending Reviews",
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorDarkGreyText),

                                      Icon(Icons.access_time_filled,color: colorNotic,size: width*0.0125,),
                                    ],
                                  ),
                                  SizedBox(height: height * 0.005),

                                  WantText(
                                      text: "24",
                                      fontSize: width * 0.016,
                                      fontWeight: FontWeight.w700,
                                      textColor: colorBlack),
                                  SizedBox(height: height * 0.005),

                                  WantText(
                                      text: "Due in 2 days",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorNotic),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // width: width*0.321,
                              padding: EdgeInsets.all(width *0.009),

                              decoration: BoxDecoration(
                                color: colorWhite,
                                borderRadius: BorderRadius.circular(width*0.0083),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(text: "Today's Schedule", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),

                                  SizedBox(height: height * 0.01),
                                  Divider(color: colorDivider,thickness: 1,),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              text: 'Grade 10A - Mathematics',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                                          WantText(
                                              text: '08:00 AM',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                        ],
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Divider(color: colorDivider,thickness: 1,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              text: 'Grade 9B - Mathematics',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                                          WantText(
                                              text: '10:30 AM',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorBlack),
                                        ],
                                      ),



                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: width*0.01),
                          Expanded(
                            child: Container(
                              // width: width*0.321,
                              padding: EdgeInsets.all(width *0.009),

                              decoration: BoxDecoration(
                                color: colorWhite,
                                borderRadius: BorderRadius.circular(width*0.0083),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(text: "Student Attendance", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),

                                  SizedBox(height: height * 0.01),
                                  Divider(color: colorDivider,thickness: 1,),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              text: 'Grade 10A ',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                                          WantText(
                                              text: '45/48 Present',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreen),
                                        ],
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Divider(color: colorDivider,thickness: 1,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              text: 'Grade 9B ',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                                          WantText(
                                              text: '42/48 Present',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreen),
                                        ],
                                      ),



                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(width *0.009),
                            
                              decoration: BoxDecoration(
                                color: colorWhite,
                                borderRadius: BorderRadius.circular(width*0.0083),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(text: "Fee Status", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                            
                                  SizedBox(height: height * 0.01),
                                  Divider(color: colorDivider,thickness: 1,),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              text: 'Pending Fees',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                                          WantText(
                                              text: '3 Students',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorRedCalendar),
                                        ],
                                      ),
                                      SizedBox(height: height * 0.004),
                                      Divider(color: Colors.transparent,thickness: 1,),
                            
                                      CustomButton(Width: width, onTap: (){},label: "View Details",paddingVertical: height*0.005,)
                            
                            
                            
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: width*0.01),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(width *0.009),
                            
                              decoration: BoxDecoration(
                                color: colorWhite,
                                borderRadius: BorderRadius.circular(width*0.0083),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(text: "Salary Details", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                            
                                  SizedBox(height: height * 0.01),
                                  Divider(color: colorDivider,thickness: 1,),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              text: 'Last Payment',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                                          WantText(
                                              text: 'Rs.25,000',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreen),
                                        ],
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Divider(color: colorDivider,thickness: 1,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          WantText(
                                              text: 'Payment Date',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                                          WantText(
                                              text: '01 Jan 2025',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreen),
                                        ],
                                      ),
                            
                            
                            
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(width *0.009),
                            
                              decoration: BoxDecoration(
                                color: colorWhite,
                                borderRadius: BorderRadius.circular(width*0.0083),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(text: "Leave Status", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                            
                                  SizedBox(height: height * 0.016),
                                  Divider(color: colorDivider,thickness: 1,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          WantText(
                                              text: '5/12',
                                              fontSize: width * 0.0166,
                                              fontWeight: FontWeight.w600,
                                              textColor: colorMainTheme),
                                          WantText(
                                              text: 'Casual Leave',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                            
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          WantText(
                                              text: '10/15',
                                              fontSize: width * 0.0166,
                                              fontWeight: FontWeight.w600,
                                              textColor: colorGreenCalendar),
                                          WantText(
                                              text: 'Casual Leave',
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                            
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: height * 0.01),
                            
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: width*0.01),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(width *0.009),
                            
                              decoration: BoxDecoration(
                                color: colorWhite,
                                borderRadius: BorderRadius.circular(width*0.0083),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(text: "Today's Meetings", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                            
                                  SizedBox(height: height * 0.01),
                                  Divider(color: colorDivider,thickness: 1,),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.access_time_filled,color: colorGreyTextLogIn,size: width*0.0125,),
                            
                                          SizedBox(width: width*0.008,),
                                          WantText(
                                              text: 'Department Meeting - 02:00 PM',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                            
                                        ],
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Divider(color: colorDivider,thickness: 1,),
                                      Row(
                                        children: [
                                          Image.asset("assets/icons/teacherhome3.png",width: width*0.0125,),
                                          SizedBox(width: width*0.008,),
                            
                                          WantText(
                                              text: 'Parent-Teacher Meeting - 04:00 PM',
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorGreyTextLogIn),
                            
                                        ],
                                      ),
                            
                            
                            
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(width *0.009),
                            
                              decoration: BoxDecoration(
                                color: colorWhite,
                                borderRadius: BorderRadius.circular(width*0.0083),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(text: "Assignments & Tests", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                                  SizedBox(height: height * 0.02),
                            
                                  Container(
                                    width: width*0.321,
                                    padding: EdgeInsets.all(width *0.009),
                            
                                    decoration: BoxDecoration(
                                      color: colorLightBlue,
                                      borderRadius: BorderRadius.circular(width*0.0083),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/icons/buttonup.png",width: width*0.011,),
                            
                                        SizedBox(width: width * 0.02),
                            
                                        WantText(
                                            text: 'Upload Homework',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorCustomButton),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.02),
                            
                                  Container(
                                    width: width*0.321,
                                    padding: EdgeInsets.all(width *0.009),
                            
                                    decoration: BoxDecoration(
                                      color: colorLightPurple,
                                      borderRadius: BorderRadius.circular(width*0.0083),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/icons/buttonup.png",width: width*0.011,),
                            
                                        SizedBox(width: width * 0.02),
                            
                                        WantText(
                                            text: 'Upload Homework',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorCustomButton),
                                      ],
                                    ),
                                  ),
                            
                            
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: width*0.01),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(width *0.009),
                            
                              decoration: BoxDecoration(
                                color: colorWhite,
                                borderRadius: BorderRadius.circular(width*0.0083),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(text: "Diary Work", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                                  SizedBox(height: height * 0.02),
                            
                                  Container(
                                    width: width*0.321,
                                    padding: EdgeInsets.all(width *0.009),
                            
                                    decoration: BoxDecoration(
                                      color: colorLightCon,
                                      borderRadius: BorderRadius.circular(width*0.0083),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/medals1.png",width: width*0.011,),
                            
                                        SizedBox(width: width * 0.02),
                            
                                        WantText(
                                            text: 'Upload Today’s Diary',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreenCalendar),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.02),
                            
                                  Container(
                                    width: width*0.321,
                                    padding: EdgeInsets.all(width *0.009),
                            
                                    decoration: BoxDecoration(
                                      color: colorLightCon,
                                      borderRadius: BorderRadius.circular(width*0.0083),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/medals1.png",width: width*0.011,),
                            
                                        SizedBox(width: width * 0.02),
                            
                                        WantText(
                                            text: 'Upload Today’s Diary',
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreenCalendar),
                                      ],
                                    ),
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
                WantText(text: "Notices", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(254, 252, 232, 1), Color.fromRGBO(254, 252, 232, 1)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                    border: Border(
                      left: BorderSide(color: Color.fromRGBO(246, 173, 43, 0.66), width: 4),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      WantText(
                          fontFamily: "Roboto",
                          text: 'Staff meeting on Friday',
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorBrown),
                      SizedBox(height: height * 0.005),

                      WantText(
                          fontFamily: "Roboto",
                          text: '10 Jan 2025',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorEvent),

                    ],
                  ),
                ),

                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(239, 246, 255, 1), Color.fromRGBO(239, 246, 255, 1)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                    border: Border(
                      left: BorderSide(color: Color.fromRGBO(37, 99, 235, 0.6), width: 4),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      WantText(
                          fontFamily: "Roboto",
                          text: 'Submit term papers by next week',
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorCustomButton),
                      SizedBox(height: height * 0.005),

                      WantText(
                          fontFamily: "Roboto",
                          text: '15 Jan 2025',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorMainTheme),

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

