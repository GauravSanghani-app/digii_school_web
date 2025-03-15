
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneScreen extends StatefulWidget {
  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(width*0.011),
            child: Container(

              width: width*0.665,
              decoration: BoxDecoration(
                color: colorBox,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const _ContactCards(
                        heading: "Class Teacher Details",
                        details: {
                          "Name": "Mrs. Kavita Sharma",
                          "Designation": "Class 12th A Teacher",
                          "Subject": "Mathematics",
                          "Contact Number": "+91 1234567890",
                          "Email": "kavita.sharma@gmail.com",
                        },
                        availability: {
                          "Weekdays": "9:00 AM to 4:00 PM",
                          "Saturdays": "10:00 AM to 12:00 PM",
                        },
                      ),
                      SizedBox(height: height * 0.0197),
                      const _ContactCards(
                        heading: "School Administration",
                        subheading: "Principal",
                        details: {
                          "Name": "Mr. Rakesh Mehra",
                          "Contact Number": "+91 1234567890",
                          "Email": "principal@gmail.com",
                        },
                      ),
                      SizedBox(height: height * 0.0172),
                      const _ContactCards(
                        subheading: "Vice Principal",
                        details: {
                          "Name": "Mrs. Swati Khanna",
                          "Contact Number": "+91 1234567890",
                          "Email": "kavita.sharma@gmail.com",
                        },
                      ),
                      SizedBox(height: height * 0.0197),
                      const _ContactCards(
                        heading: "Counselor Contact",
                        details: {
                          "Name": "Mrs. Neha Arora",
                          "Contact Number": "+91 1234567890",
                          "Email": "neha.arora@gmail.com",
                        },
                      ),
                      SizedBox(height: height * 0.0197),
                      const _ContactCards(
                        heading: "Emergency Contact",
                        subheading: "Medical Assistance (School Nurse)",
                        details: {
                          "Name": "Mrs. Kavita Das",
                          "Contact Number": "+91 1234567890",
                          "Availability": "During School hours",
                        },
                      ),
                      SizedBox(height: height * 0.0197),



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
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width*0.008),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.023),
                      WantText(text: "Help Desk", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height * 0.023),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(width*0.008),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color.fromRGBO(34, 197, 94, 0.1), Color.fromRGBO(34, 197, 94, 0.66)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          border: Border(
                            left: BorderSide(color: Color.fromRGBO(34, 197, 94, 1), width: 4),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: WantText(
                                    text: "Name: ",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: WantText(
                                    text: "Mrs. Neha Arora",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.005),
                            Row(
                              children: [
                                Expanded(
                                  child: WantText(
                                    text: "Contact Number:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: WantText(
                                    text: "+91 1234567890",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.005),
                            Row(
                              children: [
                                Expanded(
                                  child: WantText(
                                    text: "Email:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: WantText(
                                    text: "reception@school.edu",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack,
                                  ),
                                ),
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
                          color: colorMainTheme,
                          borderRadius: BorderRadius.circular(width * 0.008),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.call,
                                color: colorWhite,
                                size: width * 0.01,
                              ),
                              SizedBox(width: width * 0.01026),
                              Text(
                                'Call Help Desk',
                                style: GoogleFonts.poppins(
                                  fontSize: width * 0.011,
                                  height: 1.25,
                                  fontWeight: FontWeight.w600,
                                  color: colorWhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),




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

class _ContactCards extends StatelessWidget {
  const _ContactCards({
    String? heading,
    String? subheading,
    required Map<String, String> details,
    Map<String, String>? availability,
  })  : _heading = heading,
        _subheading = subheading,
        _details = details,
        _availability = availability;

  final String? _heading;
  final String? _subheading;
  final Map<String, String> _details;
  final Map<String, String>? _availability;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_heading != null)
          WantText(
            text: _heading,
            fontSize: width * 0.0125,
            fontWeight: FontWeight.w700,
            textColor: colorBlack,
          ),
        if (_heading != null) SizedBox(height: height * 0.0172),
        Container(
          width: width,
          padding: EdgeInsets.all(width * 0.009),
          decoration: BoxDecoration(
            color: colorWhite,
            boxShadow: [
              BoxShadow(
                color: colorBoxshadow.withOpacity(0.1),
                blurRadius: 2,
                offset: Offset(0, 2),
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(width * 0.0083),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_subheading != null)
                WantText(
                  text: _subheading,
                  fontSize: width * 0.011,
                  fontWeight: FontWeight.w600,
                  textColor: colorBlack,
                ),
              if (_subheading != null) SizedBox(height: height * 0.00985),
              ..._details.entries.map(
                    (MapEntry<String, String> detail) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: WantText(
                          text: '${detail.key}:',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w500,
                          textColor: colorDarkGreyText,
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: WantText(
                          text: detail.value,
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w600,
                          textColor: colorBlack,
                        ),
                      ),
                    ],
                  );
                },
              ),
              if (_availability != null) SizedBox(height: height * 0.0172),
              if (_availability != null)
                WantText(
                  text: 'Availability',
                  fontSize: width * 0.011,
                  fontWeight: FontWeight.w600,
                  textColor: colorBlack,
                ),
              if (_availability != null) SizedBox(height: height * 0.00985),
              if (_availability != null)
                ..._availability.entries.map(
                      (MapEntry<String, String> detail) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: WantText(
                            text: '${detail.key}:',
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w500,
                            textColor: colorDarkGreyText,
                          ),
                        ),

                        Expanded(
                          flex: 8,
                          child: WantText(
                            text: detail.value,
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack,
                          ),
                        ),
                      ],
                    );
                  },
                ),
            ],
          ),
        ),
      ],
    );
  }
}

