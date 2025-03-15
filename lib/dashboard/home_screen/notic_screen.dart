
import 'package:digi_school/dashboard/home_screen/notic_widget.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class DashNoticeScreen extends StatefulWidget {
  @override
  _DashNoticeScreenState createState() => _DashNoticeScreenState();
}

class _DashNoticeScreenState extends State<DashNoticeScreen> {


  String _noticeToDisplay = 'school';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: colorWhite,


      body: Expanded(
        child: Row(
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
                                text: "Notice",
                                fontSize: width * 0.0166,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                          ],
                        ) ,
                      ),

                      SizedBox(height: height * 0.03),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () => setState(
                                  () => _noticeToDisplay = 'school',
                            ),
                            child: Container(
                              width: width * 0.320,
                              height: height * 0.039,
                              decoration: BoxDecoration(
                                color: _noticeToDisplay == 'school'
                                    ? colorMainTheme
                                    : colorWhite,
                                borderRadius:
                                BorderRadius.circular(width * 2.56),
                              ),
                              child: Center(
                                child: WantText(
                                  text: 'School Notice',
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  textColor: _noticeToDisplay == 'school'
                                      ? colorWhite
                                      : colorBlack,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => setState(
                                  () => _noticeToDisplay = 'class',
                            ),
                            child: Container(
                              width: width * 0.320,
                              height: height * 0.039,
                              decoration: BoxDecoration(
                                color: _noticeToDisplay == 'class'
                                    ? colorMainTheme
                                    : colorWhite,
                                borderRadius:
                                BorderRadius.circular(width * 2.56),
                              ),
                              child: Center(
                                child: WantText(
                                  text: 'Class Notice',
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  textColor: _noticeToDisplay == 'class'
                                      ? colorWhite
                                      : colorBlack,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: height * 0.02),


                      Expanded(
                        child: SingleChildScrollView(
                          child: _noticeToDisplay == "school"
                              ? SchoolNotice()
                              : ClassNotice(),
                        ),
                      ),
                      SizedBox(height: height * 0.36),



                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: width*0.004,),
            NoticWidget(),
          ],
        ),
      ),
    );
  }

}

class SchoolNotice extends StatelessWidget {
  SchoolNotice({super.key});

  final List<Map<String, String>> _noticeList = [
    {
      "date": "23 December 2024",
      "title": "Commencement of new session.",
    },
    {
      "date": "5 December 2024",
      "title": "Academic Calendar 2025. ",
    },
    {
      "date": "5 December 2024",
      "title": "Academic Calendar 2025. ",
    },
    {
      "date": "5 December 2024",
      "title": "Academic Calendar 2025. ",
    },
    {
      "date": "5 December 2024",
      "title": "Academic Calendar 2025. ",
    },
    {
      "date": "5 December 2024",
      "title": "Academic Calendar 2025. ",
    },
    {
      "date": "5 December 2024",
      "title": "Academic Calendar 2025. ",
    },
    {
      "date": "5 December 2024",
      "title": "Academic Calendar 2025. ",
    },
    {
      "date": "5 December 2024",
      "title": "Academic Calendar 2025. ",
    },
    {
      "date": "5 December 2024",
      "title": "Academic Calendar 2025. ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      primary: false,
      shrinkWrap: true,
      itemCount: _noticeList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Container(
            width: width,
            margin: EdgeInsets.symmetric(vertical: height * 0.0086),
            padding: EdgeInsets.all( width * 0.008 ),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(width * 0.007),
            ),
            child: ListTile(
              // minTileHeight: width*0.03,
              title: WantText(
                text: _noticeList[index]["date"]!,
                fontSize: width * 0.011,
                fontWeight: FontWeight.w600,
                textColor: colorBlack,
                fontFamily: 'Poppins',
              ),
              subtitle: WantText(
                text: _noticeList[index]["title"]!,
                fontSize: width * 0.0097,
                fontWeight: FontWeight.w400,
                textColor: colorBlack,
              ),

              contentPadding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }
}


class ClassNotice extends StatefulWidget {
  const ClassNotice({super.key});

  @override
  State<ClassNotice> createState() => _ClassNoticeState();
}

class _ClassNoticeState extends State<ClassNotice> {
  final TextEditingController _noticDateController = TextEditingController();

  String selectedValue = "";
  bool isDropdownOpen = false;

  final List<String> options = ["All Students", "Class 10 B","Class 12 A", "Class 7 C"];

  final List<Map<String, String>> ptmList = [
    {
      "date": "23 December 2024",
      "details": "PTM on Jan 25, 10:30 AM, Room 204. Parents requested to attend."
    },
    {
      "date": "23 December 2024",
      "details": "English assignment due on Jan 22. No late submissions."
    },
    {
      "date": "5 December 2024",
      "details": "Exams start from Feb 20. Timetable will be shared soon."
    },
    {
      "date": "2 December 2024",
      "details": "Social Science project meet on Jan 15, last period."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.01),
        WantText(
          text: "Notice Date",
          fontSize: width * 0.0125,
          fontWeight: FontWeight.w700,
          textColor: colorBlack,
        ),
        SizedBox(height: height * 0.02),


        TextField(
          keyboardType: TextInputType.emailAddress,
          controller: _noticDateController,
          decoration: InputDecoration(
            filled: true,
            fillColor: colorWhite,
            hintText: "Type",
            hintStyle: GoogleFonts.roboto(
              color: colorGreyText,
              fontSize: width * 0.0097,
              fontWeight: FontWeight.w500,
            ),
            suffixIcon: Icon(Icons.calendar_today,color: colorMainTheme,size: width*0.013),

            // contentPadding: EdgeInsets.all( width * 0.025,),
            contentPadding: EdgeInsets.all( width*0.011),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(width*0.007),
              borderSide: BorderSide(color: colorWhite),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(width*0.007),
              borderSide: BorderSide(color: colorWhite),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(width*0.007),
              borderSide: BorderSide(color: colorWhite),
            ),
          ),
        ),

        SizedBox(height: height * 0.023),
        WantText(
          text: 'Notice Details',
          fontSize: width * 0.0125,
          fontWeight: FontWeight.w700,
          textColor: colorBlack,
        ),
        SizedBox(height: height * 0.02),

        Container(
          padding: EdgeInsets.all(width * 0.01),
          decoration: BoxDecoration(
            color: colorWhite,
            borderRadius: BorderRadius.circular(width * 0.0083),
          ),
          child: TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Enter the full details of your post',
              hintStyle: TextStyle(fontSize: width * 0.0097, color: colorHostelName),
              border: InputBorder.none,
            ),
          ),
        ),

        SizedBox(height: height * 0.023),
        WantText(
          text: "Select Audience",
          fontSize: width * 0.0125,
          fontWeight: FontWeight.w700,
          textColor: colorBlack,
        ),
        SizedBox(height: height * 0.02),

        GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
            });
          },
          child: Container(
            padding: EdgeInsets.all(width*0.003),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(width * 0.0083),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedValue.isEmpty ? "Select" : selectedValue,
                  style: TextStyle(
                    color: selectedValue.isEmpty ? colorGreyText : colorBlack,
                    fontSize: width * 0.0097,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: colorMainTheme,size: width*0.03,),
              ],
            ),
          ),
        ),

        if (isDropdownOpen)
          Container(
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(width * 0.0083),
                bottomLeft: Radius.circular(width * 0.0083),
              ),
            ),
            child: Column(
              children: options.map((option) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedValue = option;
                      isDropdownOpen = false;
                    });
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: options.last == option
                              ? Colors.transparent
                              : Colors.grey.shade300,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.007),
                      child: Text(
                        option,
                        style: TextStyle(color: colorBlack, fontWeight: FontWeight.w400, fontSize: width * 0.0097),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

        SizedBox(height: height * 0.02),
        CustomButton(Width: width, onTap: () {}, label: "Send Notice"),

        SizedBox(height: height * 0.02),
        WantText(
          text: "Class Notice",
          fontSize: width * 0.0125,
          fontWeight: FontWeight.w700,
          textColor: colorBlack,
        ),
        SizedBox(height: height * 0.02),

        ListView.builder(
          padding: EdgeInsets.all(0.0),
          physics: NeverScrollableScrollPhysics(), // Prevent ListView scrolling
          shrinkWrap: true, // Allow ListView to fit inside Column
          itemCount: ptmList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: width,
                  padding: EdgeInsets.all(width * 0.007),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WantText(
                        text: ptmList[index]["date"]!,
                        fontSize: width * 0.011,
                        fontWeight: FontWeight.w600,
                        textColor: Colors.black,
                      ),
                      SizedBox(height: height*0.004),
                      WantText(
                        text: ptmList[index]["details"]!,
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textOverflow: TextOverflow.visible,
                        textColor: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Image.asset("assets/images/chatedit.png",
                                  width: width * 0.015, height: height * 0.02),
                              WantText(
                                text: "Edit",
                                fontSize: width * 0.006,
                                fontWeight: FontWeight.w500,
                                textColor: colorMainTheme,
                              ),
                            ],
                          ),
                          SizedBox(width: width * 0.01),
                          Column(
                            children: [
                              Image.asset("assets/images/delete.png",
                                  width: width * 0.015, height: height * 0.02),
                              WantText(
                                text: "Delete",
                                fontSize: width * 0.006,
                                fontWeight: FontWeight.w500,
                                textColor: colorPinkText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height*0.016,),
              ],
            );
          },
        ),
      ],
    );
  }

}