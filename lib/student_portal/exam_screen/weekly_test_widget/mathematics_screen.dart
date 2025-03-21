
import 'package:digi_school/student_portal/exam_screen/recent_activity_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';


class MathematicsScreen extends StatefulWidget {
  @override
  _MathematicsScreenState createState() => _MathematicsScreenState();
}

class _MathematicsScreenState extends State<MathematicsScreen> {

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
                              text: "Mathematics",
                              fontSize: width * 0.0166,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),


                        ],
                      ) ,
                    ),

                    SizedBox(height: height * 0.03),
                    Container(
                      width: width,
                      padding: EdgeInsets.all(width * 0.007),
                      decoration: BoxDecoration(
                        color: colorMainTheme,
                        borderRadius: BorderRadius.circular(width * 0.0083),
                      ),
                      child: WantText(
                          text: "Subject - Mathematics",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w600,
                          textColor: colorWhite),
                    ),

                    SizedBox(height: height * 0.02),

                    Container(
                      width: width,
                      padding: EdgeInsets.all(width * 0.007),
                      decoration: BoxDecoration(
                        color: colorMainTheme,
                        borderRadius: BorderRadius.circular(width * 0.0083),
                      ),
                      child: WantText(
                          text: "Total Marks - 100 Marks",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w600,
                          textColor: colorWhite),
                    ),

                    SizedBox(height: height * 0.02),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6), // Apply border radius to entire table
                        child: Table(
                          border: TableBorder.all(
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                          columnWidths: const {
                            0: FlexColumnWidth(1),
                            1: FlexColumnWidth(3),
                            2: FlexColumnWidth(2),
                            3: FlexColumnWidth(2),
                            4: FlexColumnWidth(2),
                          },
                          children: [
                            _buildHeaderRow(), // Header with top rounded corners
                            _buildDataRow("07.03.2023", "Algebra", "B", "15", "Good"),
                            _buildDataRow("14.02.2025", "Integrals", "C", "10", "Average"),
                            _buildDataRow("24.01.2025", "Determinants", "B+", "18", "Very Good"), // Last row with bottom radius
                          ],
                        ),
                      ),
                    )







                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          RecentActivityWidget(),
        ],
      ),
    );
  }
  TableRow _buildHeaderRow() {
    return TableRow(
      decoration: BoxDecoration(
        color: colorMainTheme,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),

        ),
      ),
      children: [
        _buildCell("Date", isHeader: true),
        _buildCell("Unit", isHeader: true),
        _buildCell("Grade", isHeader: true),
        _buildCell("Marks \nobtained", isHeader: true),
        _buildCell("Remarks", isHeader: true),
      ],
    );
  }

  TableRow _buildDataRow(String date, String unit, String grade, String marksobtained,String remarks,) {
    return TableRow(
      decoration: BoxDecoration(


        boxShadow: [
          BoxShadow(
            color: colorBoxshadow.withOpacity(0.2),
            blurRadius: 1,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
        color: colorBoxBackground,

      ),
      children: [
        _buildCell(date),
        _buildCell(unit),
        _buildCell(grade),
        _buildCell(marksobtained),
        _buildCell(remarks),
      ],
    );
  }


  Widget _buildCell(String text, {bool isHeader = false, bool isBold = false}) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: isHeader ? width*0.0097 : width*0.0083,
          fontWeight: isHeader || isBold ? FontWeight.w700 : FontWeight.w400,
          color: isHeader ? colorWhite : colorBlack,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }


}
