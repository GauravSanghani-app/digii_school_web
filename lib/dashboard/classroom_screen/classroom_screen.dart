



import 'dart:math';
import 'package:digi_school/dashboard/classroom_screen/classroom_subject_screen.dart';
import 'package:digi_school/dashboard/message_screen/reminder_widget.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';


class DashClassroomScreen extends StatefulWidget {
  @override
  _DashClassroomScreenState createState() => _DashClassroomScreenState();
}

class _DashClassroomScreenState extends State<DashClassroomScreen> {
  final List<Map<String, String>> classes = [
    {"room": "Room 101", "grade": "12th A", "subject": "Mathematics", "students": "42", "color": "FFCE3B"},
    {"room": "Room 102", "grade": "10th C", "subject": "Geometry", "students": "42", "color": "FF81AE"},
    {"room": "Room 103", "grade": "11th B", "subject": "Algebra", "students": "42", "color": "64F69A"},
    {"room": "Room 104", "grade": "11th A", "subject": "Statistics", "students": "42", "color": "C989F9"},
    {"room": "Room 105", "grade": "11th C", "subject": "Statistics", "students": "42", "color": "89B0F9"},
  ];

  void _showCreateClassDialog() {
    final TextEditingController classNameController = TextEditingController();
    final TextEditingController sectionController = TextEditingController();
    final TextEditingController roomController = TextEditingController();
    final TextEditingController studentsController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: colorBoxBackground,
          contentPadding: EdgeInsets.all(width*0.005),
          title:WantText(
              text: "Create Class",
              fontSize: width * 0.0125,
              fontWeight: FontWeight.w500,
              textColor: colorBlack),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: height*0.039,
                child: Container(
                  padding: EdgeInsets.all( width * 0.005),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width * 0.007),
                  ),
                  child:TextFormField(
                    controller: classNameController,
                    decoration: InputDecoration(
                      hintText: 'Class Name',
                      hintStyle: TextStyle(fontSize: width * 0.0097,color: colorHostelName),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.016),
              SizedBox(
                height: height*0.039,
                child: Container(
                  padding: EdgeInsets.all( width * 0.005),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width * 0.007),
                  ),
                  child:TextFormField(
                    controller: sectionController,
                    decoration: InputDecoration(
                      hintText: 'Section',
                      hintStyle: TextStyle(fontSize: width * 0.0097,color: colorHostelName),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.016),
              SizedBox(
                height: height*0.039,
                child: Container(
                  padding: EdgeInsets.all( width * 0.005),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width * 0.007),
                  ),
                  child:TextFormField(
                    controller: roomController,
                    decoration: InputDecoration(
                      hintText: 'Room',
                      hintStyle: TextStyle(fontSize: width * 0.0097,color: colorHostelName),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.016),
              SizedBox(
                height: height*0.0039,
                child: Container(
                  padding: EdgeInsets.all( width * 0.007),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(width * 0.007),
                  ),
                  child:TextFormField(
                    controller: studentsController,
                    decoration: InputDecoration(
                      hintText: 'Number of Students',
                      hintStyle: TextStyle(fontSize: width * 0.0097,color: colorHostelName),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

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
                    width: width*0.049,
                    padding: EdgeInsets.all(width * 0.005),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width * 0.004),
                    ),
                    child: WantText(
                        textAlign: TextAlign.center,
                        text: "Cancle",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textColor: colorHostelName
                    ),
                  ),
                ),
                SizedBox(width: width*0.016,),


                GestureDetector(
                  onTap: (){
                    if (classNameController.text.isNotEmpty &&
                        sectionController.text.isNotEmpty &&
                        roomController.text.isNotEmpty &&
                        studentsController.text.isNotEmpty) {

                      final List<String> colors = ["FFCE3B", "FF81AE", "64F69A", "C989F9", "89B0F9"];
                      String randomColor = colors[Random().nextInt(colors.length)];

                      setState(() {
                        classes.add({
                          "room": roomController.text,
                          "grade": sectionController.text,
                          "subject": classNameController.text,
                          "students": studentsController.text,
                          "color": randomColor,
                        });
                      });

                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    width: width*0.049,
                    padding: EdgeInsets.all(width * 0.005),
                    decoration: BoxDecoration(
                      color: colorMainTheme,
                      borderRadius: BorderRadius.circular(width * 0.004),
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
  }


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
                                text: "Cerate Class room",
                                fontSize: width * 0.0166,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                          ],
                        ) ,
                      ),

                      SizedBox(height: height * 0.02),


                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(0.0),
                        itemCount: classes.length,
                        itemBuilder: (context, index) {
                          return ClassCard(classes[index]);
                        },
                      ),
                      SizedBox(height: height*0.016),

                      CustomButton(Width: width, onTap: _showCreateClassDialog, label: "Create class"),

                      SizedBox(height: height*0.1),

                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          ReminderWidget(),
        ],
      ),
    );
  }
}

class ClassCard extends StatelessWidget {
  final Map<String, String> classItem;

  const ClassCard(this.classItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (classItem["grade"] == "12th A") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashClassSubject()),
              );
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width*0.004,
                  height: width*0.06,
                  decoration: BoxDecoration(
                    color: Color(int.parse("0xFF${classItem["color"]}")),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WantText(
                          // student["status"] = "$result/10";
                            text: "${classItem["room"]}",
                            fontSize: width * 0.0083,
                            fontWeight: FontWeight.w400,
                            textColor: colorDarkGreyText
                        ),
                        SizedBox(height: height*0.003,),
                        WantText(text: "${classItem["grade"]} : ${classItem["subject"]}", fontSize: width * 0.011, fontWeight: FontWeight.w600, textColor: colorBlack),
                        SizedBox(height: height*0.003,),
                        WantText(text: "${classItem["students"]} Students", fontSize: width * 0.0097, fontWeight: FontWeight.w500, textColor: colorDarkGreyText),
                      ],
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: width * 0.011, color: colorMainTheme),
              ],
            ),
          ),
        ),
        SizedBox(height: height*0.02,),
      ],
    );
  }
}

