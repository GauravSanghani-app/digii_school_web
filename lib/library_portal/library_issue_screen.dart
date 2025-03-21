
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LibraryIssueScreen extends StatefulWidget {
  @override
  _LibraryIssueScreenState createState() => _LibraryIssueScreenState();
}

class _LibraryIssueScreenState extends State<LibraryIssueScreen> {

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
                      WantText(
                          text: "issue",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),

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

