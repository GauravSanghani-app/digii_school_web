
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeeScreen extends StatefulWidget {
  @override
  _FeeScreenState createState() => _FeeScreenState();
}

class _FeeScreenState extends State<FeeScreen> {

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
                      WantText(
                          fontFamily: "Roboto",
                          text: 'Payment History',
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      Center(
                        child: ClipRRect(
                          child: DataTable(
                            border: TableBorder(
                                horizontalInside: BorderSide(
                                  color: colorGreyBorder,
                                  width: width * 0.0025,
                                )),
                            decoration: BoxDecoration(
                              color: colorMainTheme,
                            ),
                            headingRowHeight: height * 0.044,

                            // dividerThickness: width * 0.015,
                            dataRowColor: MaterialStateColor.resolveWith(
                                  (states) {
                                return colorWhite;
                              },
                            ),
                            columnSpacing: width * 0.02,

                            columns: [
                              DataColumn(
                                label: WantText(
                                  text: 'Date',
                                  fontSize: width * 0.0083,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorWhite,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              DataColumn(
                                label: WantText(
                                    text: 'Fee Type',
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorWhite),
                              ),
                              DataColumn(
                                label: WantText(
                                    text: 'Amount',
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorWhite),
                              ),
                              DataColumn(
                                label: WantText(
                                    text: 'Mode',
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorWhite),
                              ),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '01.11.2024',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Tuition Fee',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '₹25,000',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Credit Card',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '15.10.2024',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Transportation',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '₹5,000',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Credit Card',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '10.09.2024',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Lab Fee',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '₹2,500',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Credit Card',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '01.08.2024',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Sports Fee',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: '₹3,000',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                                DataCell(
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Credit Card',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      WantText(
                          fontFamily: "Roboto",
                          text: 'Payment Breakdown',
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      Center(
                        child: SizedBox(
                          width: width*0.25,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: colorWhite),
                            child: Table(
                              border: TableBorder(
                                horizontalInside: BorderSide(
                                  color: colorGreyBorder,
                                  width: width * 0.0025,
                                ),
                              ),
                              columnWidths: const {
                                0: FlexColumnWidth(1), // Date Column
                                1: FlexColumnWidth(1), // Mode Column
                              },
                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                              children: [
                                TableRow(
                                  decoration: BoxDecoration(
                                      color: colorMainTheme,

                                  ),
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                        text: 'Category',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorWhite,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                      child: WantText(
                                        text: 'Amount',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorWhite,
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                                // Table Rows (Data)
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: 'Tuition Fees',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: '₹50,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:     WantText(
                                        fontFamily: "Roboto",
                                        text: 'Transportation Fees',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center,),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '₹10,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [

                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:   WantText(
                                          fontFamily: "Roboto",
                                          text: 'Lab Fees',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:     WantText(
                                          fontFamily: "Roboto",
                                          text: '₹5,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: 'Sports Fees',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '₹3,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: 'Miscellaneous Fees',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '₹2,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: 'Total Amount',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '₹70,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.02),
                      WantText(
                          fontFamily: "Roboto",
                          text: 'Transportation Charges',
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      Center(
                        child: SizedBox(
                          width: width*0.25,

                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: colorWhite),
                            child: Table(


                              border: TableBorder(
                                horizontalInside: BorderSide(
                                  color: colorGreyBorder,
                                  width: width * 0.0025,
                                ),
                              ),
                              columnWidths: const {
                                0: FlexColumnWidth(1), // Date Column
                                1: FlexColumnWidth(1), // Mode Column
                                2: FlexColumnWidth(1), // Mode Column
                              },
                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                              children: [
                                TableRow(
                                  decoration: BoxDecoration(
                                      color: colorMainTheme,

                                  ),
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                        text: 'Mode',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorWhite,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                      child: WantText(
                                        text: 'Distance',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorWhite,
                                        textAlign: TextAlign.center,),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                      child: WantText(
                                        text: 'Monthly Charges',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorWhite,
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                                // Table Rows (Data)
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: 'School Bus',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: '0-5 km',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:            WantText(
                                          fontFamily: "Roboto",
                                          text: '₹2,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:     WantText(
                                        fontFamily: "Roboto",
                                        text: 'School Bus',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center,),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '5-10 km',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),       Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '₹3,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [

                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:   WantText(
                                          fontFamily: "Roboto",
                                          text: 'Van',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:     WantText(
                                          fontFamily: "Roboto",
                                          text: '0-5 km',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ), Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:     WantText(
                                          fontFamily: "Roboto",
                                          text: '₹1,500',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: 'Auto-rickshaw',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '0-5 km',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),         Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '₹1,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      WantText(
                          fontFamily: "Roboto",
                          text: 'Hostel Charges',
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      Center(
                        child: SizedBox(
                          width: width*0.25,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: colorWhite),
                            child: Table(
                              border: TableBorder(
                                horizontalInside: BorderSide(
                                  color: colorGreyBorder,
                                  width: width * 0.0025,
                                ),
                              ),
                              columnWidths: const {
                                0: FlexColumnWidth(1), // Date Column
                                1: FlexColumnWidth(1), // Mode Column
                                2: FlexColumnWidth(1), // Mode Column
                              },
                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                              children: [
                                TableRow(
                                  decoration: BoxDecoration(
                                      color: colorMainTheme,
                                  ),
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                        text: 'Room Type',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorWhite,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                      child: WantText(
                                        text: 'Occupancy',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorWhite,
                                        textAlign: TextAlign.center,),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                      child: WantText(
                                        text: 'Monthly Charges',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w500,
                                        textColor: colorWhite,
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                                // Table Rows (Data)
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child: WantText(
                                          fontFamily: "Roboto",
                                          text: 'Single Room',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:            WantText(
                                          fontFamily: "Roboto",
                                          text: '1 Student',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:            WantText(
                                          fontFamily: "Roboto",
                                          text: '₹10,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:     WantText(
                                        fontFamily: "Roboto",
                                        text: 'Double Sharing',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center,),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '2 Student',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),       Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:  WantText(
                                          fontFamily: "Roboto",
                                          text: '₹7,500',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),
                                TableRow(
                                  children: [

                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:   WantText(
                                          fontFamily: "Roboto",
                                          text: 'Triple Sharing',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:     WantText(
                                          fontFamily: "Roboto",
                                          text: '3 Student',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ), Padding(
                                      padding:
                                      EdgeInsets.symmetric(vertical: height * 0.016),
                                      child:     WantText(
                                          fontFamily: "Roboto",
                                          text: '₹5,000',
                                          fontSize: width * 0.0083,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorBlack,
                                          textAlign: TextAlign.center),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),


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
                      WantText(text: "Support", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
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
                            WantText(text: "For payment-related queries,", fontSize: width * 0.0097, fontWeight: FontWeight.w500, textColor: colorBlack),
                            WantText(text: "contact: +91-12345-67890", fontSize: width * 0.0097, fontWeight: FontWeight.w500, textColor: colorBlack),
                            Row(
                              children: [
                                WantText(text: "emil: ", fontSize: width * 0.0097, fontWeight: FontWeight.w500, textColor: colorBlack),
                                WantText(text: "support@digischool.com0", fontSize: width * 0.0097, fontWeight: FontWeight.w500, textColor: colorMainTheme),

                              ],
                            )

                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.023),
                      WantText(text: "Upcoming Events", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height * 0.023),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(width*0.005),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color.fromRGBO(246, 173, 43, 0.7), Color.fromRGBO(246, 173, 43, 0.1)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          border: Border(
                            left: BorderSide(color: Color.fromRGBO(246, 173, 43, 1), width: 4),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WantText(
                                  text: "Christmas Celebration",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  textColor: colorBlack,
                                ),
                                SizedBox(height: height * 0.007),
                                WantText(
                                  text: "25 December, 2024",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorMainTheme,
                                ),
                                SizedBox(height: height * 0.00123),
                                WantText(
                                  text: "10:00 am - 4:00 pm",
                                  fontSize: width * 0.0083,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                ),
                              ],
                            ),
                            Image.asset("assets/images/event_christmas.png",width: width*0.07,height: width*0.057),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.016),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(width*0.005),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color.fromRGBO(127, 189, 228, 0.66), Color.fromRGBO(127, 189, 228, 0.1)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          border: Border(
                            left: BorderSide(color: Color.fromRGBO(24, 144, 255, 1), width: 4),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WantText(
                                  text: "Happy New Year",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  textColor: colorBlack,
                                ),
                                SizedBox(height: height * 0.007),
                                WantText(
                                  text: "31 December, 2024",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorMainTheme,
                                ),
                                SizedBox(height: height * 0.00123),
                                WantText(
                                  text: "10:00 pm - 12:00 am",
                                  fontSize: width * 0.0083,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                ),
                              ],
                            ),
                            Image.asset("assets/images/event_new_year.png",width: width*0.06,height: width*0.05),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.016),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(width*0.005),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color.fromRGBO(229, 231, 235, 0.1), Color.fromRGBO(229, 231, 235, 0.66)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          border: Border(
                            left: BorderSide(color: Color.fromRGBO(107, 114, 128, 1), width: 4),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WantText(
                                  text: "Makar Sankranti",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  textColor: colorBlack,
                                ),
                                SizedBox(height: height * 0.007),
                                WantText(
                                  text: "14 January, 2025",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorMainTheme,
                                ),
                                SizedBox(height: height * 0.00123),
                                WantText(
                                  text: "10:00 am - 4:00 pm",
                                  fontSize: width * 0.0083,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                ),
                              ],
                            ),
                            Image.asset("assets/images/event_makar_sankranti.png",width: width*0.06,height: width*0.05),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.016),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(width*0.005),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color.fromRGBO(241, 255, 178, 0.66), Color.fromRGBO(255, 223, 167, 0.1)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          border: Border(
                            left: BorderSide(color: Color.fromRGBO(246, 173, 43, 1), width: 4),
                          ),
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WantText(
                                  text: "Annual Function",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  textColor: colorBlack,
                                ),
                                SizedBox(height: height * 0.007),
                                WantText(
                                  text: "16 February, 2025",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorMainTheme,
                                ),
                                SizedBox(height: height * 0.00123),
                                WantText(
                                  text: "10:00 am - 4:00 pm",
                                  fontSize: width * 0.0083,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorBlack,
                                ),
                              ],
                            ),
                            Image.asset("assets/images/event_annual_function.png",width: width*0.06,height: width*0.057,),
                          ],
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

