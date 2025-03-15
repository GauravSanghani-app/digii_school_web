
import 'package:digi_school/dashboard/classroom_screen/algebra_assignment_screen.dart';
import 'package:digi_school/dashboard/classroom_screen/grade_page_screen.dart';
import 'package:digi_school/dashboard/message_screen/reminder_widget.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashClassSubject extends StatefulWidget {
  const DashClassSubject({super.key});

  @override
  State<DashClassSubject> createState() => _DashClassSubjectState();
}

class _DashClassSubjectState extends State<DashClassSubject> {


  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: colorBoxBackground,
              contentPadding: EdgeInsets.all(width * 0.008),
              title: WantText(
                  text: "Create",
                  fontSize: width * 0.0125,
                  fontWeight: FontWeight.w500,
                  textColor: colorBlack),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      _showAssignmentDialog(context);
                    },
                    child: Container(
                      width: width*0.204,

                      padding: EdgeInsets.all(width * 0.008),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width * 0.007),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/ExamRecord.png",
                            color: colorMainTheme,
                            width: width * 0.0138,
                            height: width * 0.0138,
                          ),
                          SizedBox(width: width * 0.01),
                          WantText(text: "Assignment",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w600,
                              textColor: colorBlack),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: height * 0.02),

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      _showMaterialDialog(context);
                    },
                    child: Container(

                      width: width*0.204,
                      padding: EdgeInsets.all(width * 0.008),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width * 0.007),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/Attendance.png",
                            color: colorMainTheme,
                            width: width * 0.0138,
                            // height: width * 0.038,
                          ),
                          SizedBox(width: width * 0.01),
                          WantText(text: "Material",
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w600,
                              textColor: colorBlack),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01,),
                ],
              ),

            );
          },
        );
      },
    );
  }

  void _showAssignmentDialog(BuildContext context) {
    final TextEditingController addTopicController = TextEditingController();
    final TextEditingController givePointsController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final TextEditingController assignTitleController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: colorBoxBackground,
              contentPadding: EdgeInsets.all(width * 0.008),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WantText(
                      text: "Create",
                      fontSize: width * 0.0125,
                      fontWeight: FontWeight.w500,
                      textColor: colorBlack),
                  Image.asset(
                    "assets/images/more.png", width: width * 0.018),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  SizedBox(
                    height: width * 0.025,
                    width: width * 0.204,
                    child: TextFormField(
                      controller: assignTitleController,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Assignment Title',
                        hintStyle: TextStyle(
                          fontSize: width * 0.0097,
                          color: colorSubjects,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.007),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: colorWhite,
                        contentPadding: EdgeInsets.symmetric(vertical: width * 0.007, horizontal: width * 0.007),
                      ),
                    ),
                  ),


                  SizedBox(height: height * 0.016),
                  Row(
                    children: [
                      SizedBox(
                          width: width * 0.0138, height: width * 0.0138,
                          child: Image.asset("assets/images/usersdia.png")),
                      SizedBox(width: width * 0.016),
                      Container(
                        width: width*0.12,
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width * 0.051),
                        ),
                        child: WantText(text: "12th A : Mathematics  ",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w500,
                            textColor: colorMainTheme),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.016),
                  Container(
                    width: width * 0.204,
                    padding: EdgeInsets.all(width * 0.004),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width * 0.007),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: width * 0.004),
                          child: Image.asset(
                            "assets/images/descriptiondia.png",
                            width: width * 0.012,
                            height: width * 0.012,
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        Expanded(
                          child: TextFormField(
                            controller: descriptionController,
                            maxLines: 2,
                            decoration: InputDecoration(
                              hintText: 'Description',
                              hintStyle: TextStyle(
                                fontSize: width * 0.0097,
                                color: colorSubjects,
                                fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: height * 0.016),
                  SizedBox(
                    height: width * 0.025,

                    width: width*0.204,

                    child: Container(
                      padding: EdgeInsets.all(width * 0.004),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width * 0.007),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                              width: width * 0.012, height: width * 0.012,
                              child: Image.asset("assets/icons/addlink.png")),
                          SizedBox(width: width * 0.01),
                          WantText(text: "Add Attachment",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorSubjects),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.016),
                  SizedBox(
                    height: width * 0.025,
                    width: width*0.204,

                    child: Container(

                      padding: EdgeInsets.all(width * 0.004),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width * 0.007),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                              width: width * 0.012, height: width * 0.012,
                              child: Image.asset(
                                  "assets/images/chartbardia.png")),
                          SizedBox(width: width * 0.01),
                          Expanded(
                            child: TextFormField(

                              controller: givePointsController,
                              decoration: InputDecoration(
                                hintText: 'Give Points',
                                hintStyle: TextStyle(fontSize: width * 0.0097,
                                    color: colorSubjects,
                                    fontWeight: FontWeight.w400),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.016),
                  GestureDetector(

                    child: SizedBox(
                      height: width * 0.025,
                      width: width*0.204,

                      child: Container(
                        width: width,
                        padding: EdgeInsets.all(width * 0.004),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width * 0.007),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                                width: width * 0.012, height: width * 0.012,
                                child: Image.asset(
                                    "assets/images/calendardia.png")),
                            SizedBox(width: width * 0.01),
                            WantText(text: "Set due Date",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorSubjects),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.016),
                  SizedBox(
                    height: width * 0.025,
                    width: width*0.204,

                    child: Container(
                      padding: EdgeInsets.all(width * 0.005),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width * 0.007),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                              width: width * 0.012, height: width * 0.012,
                              child: Image.asset(
                                  "assets/images/filterdia.png")),
                          SizedBox(width: width * 0.01),
                          Expanded(
                            child: TextFormField(
                              controller: addTopicController,
                              decoration: InputDecoration(
                                hintText: 'Add topic',
                                hintStyle: TextStyle(fontSize: width * 0.0097,
                                    color: colorSubjects,
                                    fontWeight: FontWeight.w400),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.01),

                ],
              ),

              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: width*0.05,
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(width * 0.003),
                        ),
                        child: WantText(
                            textAlign: TextAlign.center,
                            text: "Cancel",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorHostelName
                        ),
                      ),
                    ),
                    SizedBox(width: width*0.01),


                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: width*0.05,
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          color: colorMainTheme,
                          borderRadius: BorderRadius.circular(width * 0.003),
                        ),
                        child: WantText(
                            textAlign: TextAlign.center,
                            text: "Assign",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorWhite
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            );
          },
        );
      },
    );
  }

  void _showMaterialDialog(BuildContext context) {
    final TextEditingController addTopicMatController = TextEditingController();

    final TextEditingController descriptionMatController = TextEditingController();
    final TextEditingController studyTitleController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: colorBoxBackground,
              contentPadding: EdgeInsets.all(width * 0.008),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WantText(
                      text: "Post Study Material",
                      fontSize: width * 0.0125,
                      fontWeight: FontWeight.w500,
                      textColor: colorBlack),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      _showMenuIconDialog(context);
                    },
                    child: Image.asset(
                      "assets/images/more.png", width: width * 0.018,),
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  SizedBox(
                    height: width * 0.025,
                    width: width * 0.204,
                    child: TextFormField(
                      controller: studyTitleController,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Study Material Title',
                        hintStyle: TextStyle(
                          fontSize: width * 0.0097,
                          color: colorSubjects,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.007),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: colorWhite,
                        contentPadding: EdgeInsets.symmetric(vertical: width * 0.007, horizontal: width * 0.007),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.016),
                  Row(
                    children: [
                      SizedBox(
                          width: width * 0.0138, height: width * 0.0138,
                          child: Image.asset("assets/images/usersdia.png")),
                      SizedBox(width: width * 0.016),
                      Container(
                        width: width*0.12,
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width * 0.051),
                        ),
                        child: WantText(text: "12th A : Mathematics  ",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w500,
                            textColor: colorMainTheme),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.016),


                  Container(
                    width: width * 0.204,
                    padding: EdgeInsets.all(width * 0.004),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width * 0.007),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: width * 0.004),
                          child: Image.asset(
                            "assets/images/descriptiondia.png",
                            width: width * 0.012,
                            height: width * 0.012,
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        Expanded(
                          child: TextFormField(
                            controller: descriptionMatController,
                            maxLines: 2,
                            decoration: InputDecoration(
                              hintText: 'Description',
                              hintStyle: TextStyle(
                                fontSize: width * 0.0097,
                                color: colorSubjects,
                                fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: height * 0.016),
                  SizedBox(
                    height: width * 0.025,

                    width: width*0.204,

                    child: Container(
                      padding: EdgeInsets.all(width * 0.004),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width * 0.007),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                              width: width * 0.012, height: width * 0.012,
                              child: Image.asset("assets/icons/addlink.png")),
                          SizedBox(width: width * 0.01),
                          WantText(text: "Add Attachment",
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorSubjects),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.016),
                  SizedBox(
                    height: width * 0.025,
                    width: width*0.204,

                    child: Container(
                      padding: EdgeInsets.all(width * 0.005),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width * 0.007),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                              width: width * 0.012, height: width * 0.012,
                              child: Image.asset(
                                  "assets/images/filterdia.png")),
                          SizedBox(width: width * 0.01),
                          Expanded(
                            child: TextFormField(
                              controller: addTopicMatController,
                              decoration: InputDecoration(
                                hintText: 'Add topic',
                                hintStyle: TextStyle(fontSize: width * 0.0097,
                                    color: colorSubjects,
                                    fontWeight: FontWeight.w400),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.01),

                ],
              ),

              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: width*0.05,
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(width * 0.003),
                        ),
                        child: WantText(
                            textAlign: TextAlign.center,
                            text: "Cancel",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorHostelName
                        ),
                      ),
                    ),
                    SizedBox(width: width*0.01),


                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: width*0.05,
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          color: colorMainTheme,
                          borderRadius: BorderRadius.circular(width * 0.003),
                        ),
                        child: WantText(
                            textAlign: TextAlign.center,
                            text: "Assign",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorWhite
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            );
          },
        );
      },
    );
  }

  void _showMenuIconDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: colorBoxBackground,
              contentPadding: EdgeInsets.all(width * 0.008),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close, color: colorMainTheme)),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [


                  Container(
                    height: width * 0.025,
                    width: width*0.204,
                    padding: EdgeInsets.all(width * 0.005),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width * 0.007),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Historymat.png", color: colorMainTheme,
                          width: width * 0.0138,
                          height: width * 0.0138,
                        ),
                        SizedBox(width: width * 0.01),
                        WantText(text: "Schedule Post",
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                      ],
                    ),
                  ),


                  SizedBox(height: height * 0.023,),

                  Container(

                    height: width * 0.025,
                    width: width*0.204,
                    padding: EdgeInsets.all(width * 0.005),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width * 0.007),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/filemat.png", color: colorMainTheme,
                          width: width * 0.0138,
                          height: width * 0.0138,
                        ),
                        SizedBox(width: width * 0.01),
                        WantText(text: "Save as draft",
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01,),


                ],
              ),

            );
          },
        );
      },
    );
  }


  String _roomToDisplay = 'stream';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(width * 0.011),
            child: Flexible(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: [
                      Container(
                        width: width * 0.665,
                        decoration: BoxDecoration(
                          color: colorBox,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: width * 0.011,
                            horizontal: height * 0.009,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: width,
                                padding: EdgeInsets.all(width * 0.005),
                                decoration: BoxDecoration(
                                  color: colorHeaderCon,
                                  borderRadius: BorderRadius.circular(
                                      width * 0.022),
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: colorBlack,
                                        size: height * 0.026,
                                      ),
                                    ),
                                    SizedBox(width: width * 0.27),
                                    WantText(
                                      text: "Class room",
                                      fontSize: width * 0.0166,
                                      fontWeight: FontWeight.w700,
                                      textColor: colorBlack,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: height * 0.016),
                              Container(
                                decoration: BoxDecoration(
                                  color: colorWhite,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: width * 0.004,
                                      height: width * 0.06,
                                      decoration: BoxDecoration(
                                        color: Color(int.parse("0xFFFFCE3B")),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(width * 0.008),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            WantText(
                                              text: "Room 201",
                                              fontSize: width * 0.0083,
                                              fontWeight: FontWeight.w400,
                                              textColor: colorDarkGreyText,
                                            ),
                                            SizedBox(height: height * 0.003),
                                            WantText(
                                              text: "12th A: Mathematics",
                                              fontSize: width * 0.011,
                                              fontWeight: FontWeight.w600,
                                              textColor: colorBlack,
                                            ),
                                            SizedBox(height: height * 0.003),
                                            WantText(
                                              text: "42 Students",
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w500,
                                              textColor: colorDarkGreyText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: height * 0.016),
                              Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () => setState(
                                          () => _roomToDisplay = 'stream',
                                    ),
                                    child: Container(
                                      width: width * 0.21,
                                      height: height * 0.042,
                                      decoration: BoxDecoration(
                                        color: _roomToDisplay == 'stream'
                                            ? colorMainTheme
                                            : colorWhite,
                                        borderRadius:
                                        BorderRadius.circular(width * 2.56),
                                      ),
                                      child: Center(
                                        child: WantText(
                                          text: 'Stream',
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          textColor: _roomToDisplay == 'stream'
                                              ? colorBlack
                                              : colorBlack,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => setState(
                                          () => _roomToDisplay = 'classwork',
                                    ),
                                    child: Container(
                                      width: width * 0.21,
                                      height: height * 0.042,
                                      decoration: BoxDecoration(
                                        color: _roomToDisplay == 'classwork'
                                            ? colorMainTheme
                                            : colorWhite,
                                        borderRadius:
                                        BorderRadius.circular(width * 2.56),
                                      ),
                                      child: Center(
                                        child: WantText(
                                          text: 'Classwork',
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          textColor: _roomToDisplay == 'classwork'
                                              ? colorBlack
                                              : colorBlack,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => setState(
                                          () => _roomToDisplay = 'people',
                                    ),
                                    child: Container(
                                      width: width * 0.21,
                                      height: height * 0.042,
                                      decoration: BoxDecoration(
                                        color: _roomToDisplay == 'people'
                                            ? colorMainTheme
                                            : colorWhite,
                                        borderRadius:
                                        BorderRadius.circular(width * 2.56),
                                      ),
                                      child: Center(
                                        child: WantText(
                                          text: 'Students',
                                          fontSize: width * 0.011,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          textColor: _roomToDisplay == 'people'
                                              ? colorBlack
                                              : colorBlack,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.016),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: _roomToDisplay == "stream"
                                      ? StreamClass()
                                      : _roomToDisplay == "classwork"
                                      ? ClassworkClass()
                                      : PeopleClass(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (_roomToDisplay == 'classwork')

                        Positioned(
                        bottom: 16,
                        right: 16,
                        child:  FloatingActionButton(
                            backgroundColor: colorMainTheme,
                            shape: const CircleBorder(),
                            onPressed: ()=> _showDialog(context),
                            child: Icon(Icons.add,color: colorWhite,size:width*0.02,)

                        )
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          SizedBox(width: width * 0.004),
          ReminderWidget(),
        ],
      ),
    );
  }


}


class StreamClass extends StatefulWidget {
  StreamClass({super.key});

  @override
  _StreamClassState createState() => _StreamClassState();
}

class _StreamClassState extends State<StreamClass> {
  String selectedSubject = "All Classrooms";
  String tempSelectedSubject = "All Classrooms";
  bool isDropdownOpen = false;





  void _showAddMenu(BuildContext context) {
    showMenu(
      context: context,
      color: colorWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        side: BorderSide(color: colorMainTheme, width: 2),
      ),
      position: RelativeRect.fromLTRB(680, 650, 640, 100),
      items: [
        PopupMenuItem(
          height: width*0.02,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2), // Kam padding
          child: Row(
            children: [
              SizedBox(
                height: height * 0.018,
                width: width * 0.01,
                child: Image.asset("assets/icons/addfile.png"),
              ),
              SizedBox(width: width * 0.003),
              WantText(text: "File", fontSize: width * 0.0097, fontWeight: FontWeight.w500, textColor: colorDarkGreyText),
            ],
          ),
        ),
        PopupMenuItem(
          height: width*0.02,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Row(
            children: [
              SizedBox(
                height: height * 0.018,
                width: width * 0.01,
                child: Image.asset("assets/icons/addlink.png"),
              ),
              SizedBox(width: width * 0.003),
              WantText(text: "Link", fontSize: width * 0.0097, fontWeight: FontWeight.w500, textColor: colorDarkGreyText),
            ],
          ),
        ),

      ],
    );
  }


  void _showCreateClassDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: colorWhite,
              contentPadding: EdgeInsets.all(width*0.01),
              title: WantText(
                  text: "For",
                  fontSize: width * 0.011,
                  fontWeight: FontWeight.w600,
                  textColor: colorBlack),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Dropdown Trigger Container
                  SizedBox(
                    width: width*0.128,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isDropdownOpen = !isDropdownOpen;  // Toggle dropdown visibility
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          border: Border.all(color: colorMainTheme,width: 1),
                          color: colorBoxBackground,
                          borderRadius: BorderRadius.circular(width * 0.007),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WantText(text: selectedSubject, fontSize: width*0.0097, fontWeight: FontWeight.w500, textColor: colorMainTheme),

                            Icon(
                              isDropdownOpen
                                  ? Icons.arrow_drop_up_rounded
                                  : Icons.arrow_drop_down_rounded,
                              color: colorMainTheme,
                              size: width*0.015,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Dropdown Menu
                  if (isDropdownOpen)
                    Container(
                      width: width * 0.204,  // 🔹 Container की width कम की

                      margin: EdgeInsets.only(top: height*0.016),
                      padding: EdgeInsets.all(width*0.01),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(width*0.0083),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _buildDropdownItem(context, "All Classrooms", setState),
                          _buildDropdownItem(context, "12th A : Mathematics", setState),
                          _buildDropdownItem(context, "10th C : Geometry", setState),
                          _buildDropdownItem(context, "11th B : Algebra", setState),
                          _buildDropdownItem(context, "11th A : Statistics", setState),
                          _buildDropdownItem(context, "11th C : Statistics", setState),

                          SizedBox(height: height * 0.012),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSubject = tempSelectedSubject;
                                isDropdownOpen = false; // Close dropdown
                              });
                            },
                            child: Container(
                              width: width * 0.05,
                              padding: EdgeInsets.all(width * 0.005),
                              decoration: BoxDecoration(
                                color: colorMainTheme,
                                borderRadius: BorderRadius.circular(width * 0.003),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  WantText(
                                    text: "Add",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorWhite,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                  SizedBox(height: height*0.016,),
                  Container(
                    padding: EdgeInsets.all( width * 0.008),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width * 0.0083),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width:width*0.204,
                          child: TextFormField(maxLines: 2,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0.0),
                              hintText: 'Share this with your class',
                              hintStyle: TextStyle(fontSize: width * 0.0097,color: colorHostelName),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _showAddMenu(context),

                          child: Container(
                            width: width*0.043,
                            padding: EdgeInsets.all(width * 0.003),
                            decoration: BoxDecoration(
                              color: colorMainTheme,
                              borderRadius: BorderRadius.circular(width * 0.007),
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: width * 0.01,
                                  width: width * 0.01,
                                  child: Image.asset("assets/icons/link.png"),
                                ),
                                WantText(
                                    textAlign: TextAlign.center,
                                    text: "Add",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorWhite
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: height*0.010,),

                ],
              ),

              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: width*0.05,
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(width * 0.003),
                        ),
                        child: WantText(
                            textAlign: TextAlign.center,
                            text: "Cancel",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorHostelName
                        ),
                      ),
                    ),
                    SizedBox(width: width*0.01),


                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: width*0.05,
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          color: colorMainTheme,
                          borderRadius: BorderRadius.circular(width * 0.003),
                        ),
                        child: WantText(
                            textAlign: TextAlign.center,
                            text: "Create",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorWhite
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            );
          },
        );
      },
    );
  }

  Widget _buildDropdownItem(BuildContext context, String text, Function setState) {
    bool isSelected = text == tempSelectedSubject;
    return GestureDetector(
      onTap: () {
        setState(() {
          tempSelectedSubject = text; // Temporary selection
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: height*0.006),
        child: Row(
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 1),
                color: isSelected ? colorMainTheme : colorWhite,
              ),
            ),
            SizedBox(width: width*0.01),

            WantText(text: text, fontSize: width*0.0097, fontWeight: FontWeight.w500, textColor: isSelected ? colorMainTheme : colorSubjects)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height*0.006),

          WantText(
              text: "Pending Evaluations",
              fontSize: width * 0.0125,
              fontWeight: FontWeight.w700,
              textColor: colorBlack),
          SizedBox(height: height * 0.02),
          Container(
            width: width,
            padding: EdgeInsets.all( width * 0.008),
            decoration: BoxDecoration(
              color: colorCustomButtonLabelWhite,
              borderRadius: BorderRadius.circular(width*0.0083),

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: width * 0.035),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WantText(
                        fontFamily: "Roboto",
                        text: 'Trigonometry Test',
                        fontSize: width * 0.011,
                        fontWeight: FontWeight.w600,
                        textColor: colorBlack),
                    WantText(
                        fontFamily: "Roboto",
                        text: '5 Left',
                        fontSize: width * 0.006,
                        fontWeight: FontWeight.w500,
                        textColor: colorYellow),
                  ],
                ),

                WantText(
                    fontFamily: "Roboto",
                    text: 'Submission Date : 5 days ago',
                    fontSize: width * 0.0097,
                    fontWeight: FontWeight.w500,
                    textColor: colorDarkGreyText),
                // SizedBox(height: height*0.005,),
                WantText(
                    fontFamily: "Roboto",
                    text:
                    'Class : Grade 10 - B',
                    fontSize: width * 0.0097,
                    fontWeight: FontWeight.w500,
                    textColor: colorDarkGreyText),
                SizedBox(height: height*0.016,),
                CustomButton(Width: width, onTap: (){}, label: 'Grade now'),
              ],
            ),
          ),
          SizedBox(height: height*0.02),

          GestureDetector(
            onTap: () => _showCreateClassDialog(context),
            child: Container(
              width: width,
              padding: EdgeInsets.all( width * 0.008),
              decoration: BoxDecoration(
                color: colorCustomButtonLabelWhite,
                borderRadius: BorderRadius.circular(width*0.0083),

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset(
                    "assets/images/principle.png",width: width * 0.02),
                  SizedBox(width: width * 0.01),
                  WantText(
                      text: "Share Something with your class",
                      fontSize: width * 0.0097,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkGreyText),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.02),

          Container(
            width: width,
            padding: EdgeInsets.all( width * 0.008),
            decoration: BoxDecoration(
              color: colorCustomButtonLabelWhite,
              borderRadius: BorderRadius.circular(width*0.0083),

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Image.asset(
                      "assets/images/principle.png",width: width * 0.027),
                    SizedBox(width: width * 0.01),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        WantText(
                            text: "Mrunal Patel",
                            fontSize: width * 0.011,
                            fontWeight: FontWeight.w600,
                            textColor: colorBlack),
                        WantText(
                            text: "5 February 2025",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorDarkGreyText),
                      ],
                    ),
                    SizedBox(width: width * 0.5),
                    Image.asset(
                      "assets/images/more.png",width: width * 0.016),
                  ],
                ),
                SizedBox(height: height * 0.009),
                WantText(
                    text: "Upcoming Chapter Test: Calculus",
                    fontSize: width * 0.011,
                    fontWeight: FontWeight.w600,
                    textColor: colorBlack),

                SizedBox(height: height * 0.009),

                WantText(
                    textOverflow: TextOverflow.fade,
                    text:
                    'Hi Everyone! 👋\nWe’ll have a short test on Chapter: Differentiation and Integration this Monday (12th Feb) at 11:30 AM. It’ll be a 20-mark test.',
                    fontSize: width * 0.0097,
                    fontWeight: FontWeight.w400,
                    textColor: colorBlack),
                SizedBox(height: height * 0.016),

                Container(
                  width: width,
                  padding: EdgeInsets.all( width * 0.005),
                  decoration: BoxDecoration(
                    color: colorBoxshadow,
                    borderRadius: BorderRadius.circular(width*0.0083),

                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.032,
                        width: width * 0.02,
                        child: Image.asset("assets/icons/pdfrecent.png"),
                      ),
                      SizedBox(width: width * 0.01),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WantText(
                              text: 'Chapter 5 - Calculus.pdf',
                              fontSize: width * 0.0083,
                              fontWeight: FontWeight.w500,
                              textColor: colorBlack,  // Prevent overflow
                            ),
                            SizedBox(height: height * 0.008),
                            WantText(
                              text: '2.3 MB',
                              fontSize: width * 0.0076,
                              fontWeight: FontWeight.w400,
                              textColor: colorDarkGreyText,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: width * 0.028), // Adjust spacing

                      SizedBox(
                        height: height * 0.018,
                        width: width * 0.07,
                        child: Image.asset("assets/icons/buttondown.png"),
                      ),
                    ],
                  ),
                ),


                SizedBox(height: height*0.02),



              ],
            ),
          ),
          SizedBox(height: height*0.02),
          Container(
            width: width,
            padding: EdgeInsets.all( width * 0.008),
            decoration: BoxDecoration(
              color: colorCustomButtonLabelWhite,
              borderRadius: BorderRadius.circular(width*0.0083),

            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Image.asset(
                  "assets/images/assignment1.png",width: width * 0.03),
                SizedBox(width: width * 0.01),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      WantText(
                          text: "New Assignment : Trignometry",
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w500,
                          textColor: colorBlack,
                      ),
                      SizedBox(height: height*0.003,),
                      WantText(
                          text: "5 February 2025",
                          fontSize: width * 0.0083,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),
                    ],
                  ),
                ),

                Image.asset(
                  "assets/images/more.png",width: width * 0.016,),
              ],
            ),
          ),
          SizedBox(height: height*0.02),
          GestureDetector(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AlgebraAssignmentScreen()));

            },
            child: Container(
              width: width,
              padding: EdgeInsets.all( width * 0.008),
              decoration: BoxDecoration(
                color: colorCustomButtonLabelWhite,
                borderRadius: BorderRadius.circular(width*0.0083),

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset(
                    "assets/images/assignment1.png",width: width * 0.03,),
                  SizedBox(width: width * 0.01),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        WantText(
                          text: "New Assignment : Algebra",
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w500,
                          textColor: colorBlack,
                        ),
                        SizedBox(height: height*0.003,),
                        WantText(
                            text: "5 February 2025",
                            fontSize: width * 0.0083,
                            fontWeight: FontWeight.w400,
                            textColor: colorDarkGreyText),
                      ],
                    ),
                  ),

                  Image.asset(
                    "assets/images/more.png",width: width * 0.016,),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.02),
          Container(
            width: width,
            padding: EdgeInsets.all( width * 0.008),
            decoration: BoxDecoration(
              color: colorCustomButtonLabelWhite,
              borderRadius: BorderRadius.circular(width*0.0083),

            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Image.asset(
                  "assets/images/assignment2.png",width: width * 0.03,),
                SizedBox(width: width * 0.01),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      WantText(
                        text: "New Material : Trignometry",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w500,
                        textColor: colorBlack,
                      ),
                      SizedBox(height: height*0.003,),
                      WantText(
                          text: "5 February 2025",
                          fontSize: width * 0.0083,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),
                    ],
                  ),
                ),

                Image.asset(
                  "assets/images/more.png",width: width * 0.016,),
              ],
            ),
          ),
          SizedBox(height: height*0.02),
          Container(
            width: width,
            padding: EdgeInsets.all( width * 0.008),
            decoration: BoxDecoration(
              color: colorCustomButtonLabelWhite,
              borderRadius: BorderRadius.circular(width*0.0083),

            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Image.asset(
                  "assets/images/assignment2.png",width: width * 0.03,),
                SizedBox(width: width * 0.01),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      WantText(
                        text: "New Material : Determinants",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w500,
                        textColor: colorBlack,
                      ),
                      SizedBox(height: height*0.003,),
                      WantText(
                          text: "5 February 2025",
                          fontSize: width * 0.0083,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText),
                    ],
                  ),
                ),

                Image.asset(
                  "assets/images/more.png",width: width * 0.016,),
              ],
            ),
          ),

          SizedBox(height: height*0.023),
        ],
      );
  }
}






class ClassworkClass extends StatefulWidget {
  const ClassworkClass({super.key});

  @override
  State<ClassworkClass> createState() => _ClassworkClassState();
}

class _ClassworkClassState extends State<ClassworkClass> {

  List<Map<String, dynamic>> students = [
    {
      'assign': 'New Assignment : Trignometry',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment1.png',
    },
    {
      'assign': 'New Assignment : Probability',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment1.png',
    },
    {
      'assign': 'New Assignment : Trignometry',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment1.png',
    },
    {
      'assign': 'New Assignment : Probability',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment1.png',
    },
    {
      'assign': 'New Material : Trignometry',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment2.png',
    },
    {
      'assign': 'New Material : Determinants',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment2.png',
    },
    {
      'assign': 'New Assignment : Trignometry',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment1.png',
    },
    {
      'assign': 'New Assignment : Probability',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment1.png',
    },
    {
      'assign': 'New Material : Trignometry',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment2.png',
    },
    {
      'assign': 'New Material : Determinants',
      'date': '5 February 2025',
      'photo': 'assets/images/assignment2.png',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height*0.016,),

        WantText(
          text: "Students List",
          fontSize: width * 0.0125,
          fontWeight: FontWeight.w700,
          textColor: colorBlack,
        ),
        SizedBox(height: height * 0.02),

        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: students.length,
          itemBuilder: (context, index) {
            var student = students[index];

            return Column(
              children: [
                Container(
                  width: width,
                  padding: EdgeInsets.all( width * 0.008),
                  decoration: BoxDecoration(
                    color: colorCustomButtonLabelWhite,
                    borderRadius: BorderRadius.circular(width*0.0083),

                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              student['photo'],
                              width: width * 0.03,

                            ),
                            SizedBox(width: width * 0.01),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                WantText(text: student['assign'], fontSize: width * 0.0097,fontWeight: FontWeight.w500, textColor: colorBlack),
                                SizedBox(height: height*0.006,),

                                WantText(text: student['date'], fontSize: width * 0.0083,fontWeight: FontWeight.w400, textColor: colorDarkGreyText),

                              ],
                            ),

                          ],
                        ),
                      ),


                      Image.asset(
                        "assets/images/more.png",width: width * 0.016,),

                    ],
                  ),
                ),
                SizedBox(height: height*0.016,)
              ],
            );
          },
        ),


      ],
    );
  }

}




class PeopleClass extends StatefulWidget {
  const PeopleClass({super.key});

  @override
  State<PeopleClass> createState() => _PeopleClassState();
}

class _PeopleClassState extends State<PeopleClass> {


  List<Map<String, dynamic>> students = [
    {
      'name': 'Aarav Sharma',
      'rollNo': '1',
      'photo': 'assets/images/boy.png',
    },
    {
      'name': 'Ananya Iyer',
      'rollNo': '2',
      'photo': 'assets/images/person.png',
    },
    {
      'name': 'Arjun Malhotra',
      'rollNo': '3',
      'photo': 'assets/images/roll3.png',
    },
    {
      'name': 'Ayaan Qureshi',
      'rollNo': '4',
      'photo': 'assets/images/boy.png',
    },
    {
      'name': 'Aditya Rao',
      'rollNo': '5',
      'photo': 'assets/images/roll9.png',
    },
    {
      'name': 'Dev Patel',
      'rollNo': '6',
      'photo': 'assets/images/roll5.png',
    },
    {
      'name': 'Kavya Iyer',
      'rollNo': '7',
      'photo': 'assets/images/roll10.png',
    },
    {
      'name': 'Manya Gupta',
      'rollNo': '8',
      'photo': 'assets/images/roll11.png',
    },
    {
      'name': 'Meera Reddy',
      'rollNo': '9',
      'photo': 'assets/images/roll6.png',
    },
    {
      'name': 'Mihir Joshi',
      'rollNo': '10',
      'photo': 'assets/images/roll7.png',
    },
    {
      'name': 'Priya Nair',
      'rollNo': '11',
      'photo': 'assets/images/roll8.png',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.02),

        WantText(
          text: "Students List",
          fontSize: width * 0.0125,
          fontWeight: FontWeight.w700,
          textColor: colorBlack,
        ),
        SizedBox(height: height * 0.02),

        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: students.length,
          itemBuilder: (context, index) {
            var student = students[index];

            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    if (student["name"] == "Meera Reddy") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GradeScreen()), // Navigate to MathScreen
                      );
                    }
                  },
                  child: Container(
                    width: width,
                    padding: EdgeInsets.all( width * 0.008),
                    decoration: BoxDecoration(
                      color: colorCustomButtonLabelWhite,
                      borderRadius: BorderRadius.circular(width*0.0083),

                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              student['photo'],
                              width: width * 0.025,
                              height: width * 0.025,
                            ),
                            SizedBox(width: width * 0.016),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                WantText(text: student['name'], fontSize: width * 0.011,fontWeight: FontWeight.w600, textColor: colorBlack),

                                WantText(text: 'Roll no. - ${student['rollNo']}', fontSize: width * 0.0097,fontWeight: FontWeight.w400, textColor: colorBlack),

                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: height*0.016,)
              ],
            );
          },
        ),


      ],
    );
  }

}