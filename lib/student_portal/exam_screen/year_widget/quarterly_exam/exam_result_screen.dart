
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';


class ExamResultScreen extends StatefulWidget {
  @override
  _ExamResultScreenState createState() => _ExamResultScreenState();
}

class _ExamResultScreenState extends State<ExamResultScreen> {



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
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.arrow_back_ios,color: colorBlack,size: height*0.026)),
                              SizedBox(width: width*0.27,),
                              WantText(
                                  text: "Report Card",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),
                            ],
                          ) ,
                        ),

                        SizedBox(height: height * 0.03),


                        Row(
                          children: [
                            SizedBox(width: width * 0.03),
                            Image.asset(
                              "assets/images/schoollogo.png",
                              width: width * 0.187,
                              height: width * 0.055,
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                WantText(
                                    fontFamily: "Roboto",
                                    text: 'Sri Sankara Vidiyasala',
                                    fontSize: width * 0.0125,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),

                                WantText(
                                    text: 'Hr. Sec. School  ',
                                    fontSize: width * 0.0125,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            )
                          ],
                        ),

                        Divider(color: colorDarkGreyText,),

                        SizedBox(height: height * 0.02),

                        Center(
                          child: Container(
                            padding: EdgeInsets.all(width * 0.007),

                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: colorBoxshadow.withOpacity(0.2), // Light shadow
                                  blurRadius: 1, // Soft shadow effect
                                  offset: Offset(0, 2), // Shadow only at the bottom
                                  spreadRadius: 0, // No spread on sides
                                ),
                              ],
                              color: colorBoxBackground,
                              borderRadius: BorderRadius.circular(width * 0.0083),
                            ),
                            child: WantText(textAlign: TextAlign.center,
                                fontFamily: "Roboto",
                                text: "Half- Yearly  Examination ",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack),
                          ),
                        ),
                        SizedBox(height: height * 0.02),

                        Center(
                          child: WantText(textAlign: TextAlign.center,
                              fontFamily: "Roboto",
                              text: "Student Name: Sarah Johnson",
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w600,
                              textColor: colorBlack),
                        ),
                        SizedBox(height: height*0.02),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WantText(
                                fontFamily: "Roboto",
                                text: "Class : XII - A",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack),
                            SizedBox(width: width *0.1,),
                            Container(

                              width: 1,
                              height: height*0.03, // Adjust height
                              color: colorDarkGreyText,
                            ),
                            SizedBox(width: width *0.1,),
                            WantText(
                                fontFamily: "Roboto",
                                text: "Roll No  :  2",
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack),
                          ],),

                        SizedBox(height: height*0.023),

                        Center(
                          child: SizedBox(
                            width:width*0.232,
                            child: Table(
                              border: TableBorder.all(
                                color: Colors.grey.shade300,borderRadius: BorderRadius.circular(6),
                                width: 1,
                              ),
                              columnWidths: {
                                0: FlexColumnWidth(0.6),
                                1: FlexColumnWidth(0.5),
                                2: FlexColumnWidth(0.5),
                                3: FlexColumnWidth(0.5),
                              },
                              children: [
                                _buildHeaderRow(),
                                _buildDataRow("English", "18", "72", "90"),
                                _buildDataRow("Maths", "16", "75", "91"),
                                _buildDataRow("Physics", "15", "70", "85"),
                                _buildDataRow("Biology", "17", "74", "91"),
                                _buildDataRow("Language", "19", "78", "97"),
                                _buildTotalRow("Total", "600", "551"),
                                _buildFooterRow("Percentage", "91%"),
                                _buildFooterRow("Grade", "A+"),
                              ],
                            ),
                          ),
                        ),



                        SizedBox(height: height * 0.36),



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
              padding: EdgeInsets.only(top: height*0.023),
              decoration: BoxDecoration(
                color: colorWhite,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WantText(
                      fontFamily: "Roboto",
                      text: "Teachers Feedback",
                      fontSize: width * 0.011,
                      fontWeight: FontWeight.w600,
                      textColor: colorBlack),
                  SizedBox(height: height * 0.023),
                  Container(
                    width: width,
                    padding: EdgeInsets.all(width*0.008),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(137, 121, 255, 0.66), Color.fromRGBO(137, 121, 255, 0.1)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      // borderRadius: BorderRadius.circular(8), // Rounded corners
                      border: Border(
                        left: BorderSide(color: Color.fromRGBO(137, 121, 255, 1), width: 4),
                      ),
                    ),

                    child: WantText(
                        fontFamily: "Roboto",
                        textOverflow: TextOverflow.visible,
                        text: "Excellent academic performance. Keep up the good work!",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textColor: colorBlack),
                  ),




                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildHeaderRow() {
    return TableRow(
      decoration: BoxDecoration(
        color: colorMainTheme,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),  // Adjust the radius as needed
          topRight: Radius.circular(6),
        ),
      ),
      children: [
        _buildCell("Subject", isHeader: true),
        _buildCell("Internal Exam \n(20)", isHeader: true),
        _buildCell("Term Exam \n(80)", isHeader: true),
        _buildCell("Total \n(100)", isHeader: true),
      ],
    );
  }

  TableRow _buildDataRow(String subject, String internalExam, String termExam,String total) {
    return TableRow(
      decoration: BoxDecoration(
        color: colorWhite,

      ),
      children: [
        _buildCell(subject),
        _buildCell(internalExam),
        _buildCell(termExam),
        _buildCell(total),
      ],
    );
  }

  TableRow _buildTotalRow(String label, String totalMarks, String obtainedMarks) {
    return TableRow(
      decoration: BoxDecoration(
        color: colorWhite,

      ),
      children: [

        _buildCell(label, isBold: true),
        _buildCell("", isBold: true),
        _buildCell(obtainedMarks, isBold: true),
        _buildCell(totalMarks, isBold: true),
      ],
    );
  }

  TableRow _buildFooterRow(String label, String value) {
    return TableRow(
      decoration: BoxDecoration(
        color: colorWhite,

      ),
      children: [
        _buildCell(label, isBold: true),
        _buildCell("", isBold: true),
        _buildCell("", isBold: true),
        _buildCell(value, isBold: true),
      ],
    );
  }

  Widget _buildCell(String text, {bool isHeader = false, bool isBold = false}) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        text,
        style: TextStyle(

          fontSize: width*0.0083,
          fontWeight: isHeader || isBold ? FontWeight.w700 : FontWeight.w400,
          color: isHeader ? colorBlack : colorBlack,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }


}
