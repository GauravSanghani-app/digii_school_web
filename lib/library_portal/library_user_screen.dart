
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class LibraryUserScreen extends StatefulWidget {
  @override
  _LibraryUserScreenState createState() => _LibraryUserScreenState();
}

class _LibraryUserScreenState extends State<LibraryUserScreen> {


  final List<Map<String, String>> borrowingHistory = [
    {
      'image': 'assets/images/parentimag.png',
      'name': 'Sarah Johnson',
      'book': 'The Great Gatsby',
      'status': 'Returned'},
    {
      'image': 'assets/images/teacherimg.png',
      'name': 'Michael Chen',
      'book': 'To Kill a Mockingbird',
      'status': 'Due Today'},
    {
      'image': 'assets/images/performancemrs.png',
      'name': 'Emily Brown',
      'book': '1984',
      'status': 'Overdue'},
  ];

  final List<Map<String, String>> reservationRequests = [
    {'book': 'Pride and Prejudice', 'user': 'Alex Wilson', 'time': '2h ago'},
    {'book': 'The Catcher in the Rye', 'user': 'Lisa Park', 'time': '5h ago'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Padding(
        padding: EdgeInsets.all(width*0.008),
        child: Container(

          width: width,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(width*0.011),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(width*0.008),
                            boxShadow: [
                              BoxShadow(
                                color: colorBoxshadow.withOpacity(0.1),
                                blurRadius: 2,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              ),
                            ],
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  WantText(
                                      text: "Total Users",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Image.asset('assets/icons/teacherhome1.png',width: width*0.017,color: colorCustomButton,),

                                ],
                              ),
                              SizedBox(height: height*0.005),

                              WantText(
                                  text: "2,451",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
                              SizedBox(height: height*0.005),

                              WantText(
                                  text: "+12% from last month",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorGreen),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.008,),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(width*0.011),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(width*0.008),
                            boxShadow: [
                              BoxShadow(
                                color: colorBoxshadow.withOpacity(0.1),
                                blurRadius: 2,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              ),
                            ],
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  WantText(
                                      text: "Books Borrowed",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Image.asset('assets/images/medals1.png',width: width*0.013,color: colorPurple,),

                                ],
                              ),
                              SizedBox(height: height*0.005),

                              WantText(
                                  text: "847",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
                              SizedBox(height: height*0.005),

                              WantText(
                                  text: "+5% from last month",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorGreen),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.008,),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(width*0.011),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(width*0.008),
                            boxShadow: [
                              BoxShadow(
                                color: colorBoxshadow.withOpacity(0.1),
                                blurRadius: 2,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              ),
                            ],
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  WantText(
                                      text: "Pending Returns",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Icon(Icons.access_time_filled,color: colorOrange,size: width*0.017,)


                                ],
                              ),
                              SizedBox(height: height*0.005),

                              WantText(
                                  text: "124",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
                              SizedBox(height: height*0.005),

                              WantText(
                                  text: "+18% from last month",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorGreen),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.008,),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(width*0.011),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(width*0.008),
                            boxShadow: [
                              BoxShadow(
                                color: colorBoxshadow.withOpacity(0.1),
                                blurRadius: 2,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              ),
                            ],
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  WantText(
                                      text: "Total Fines",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  WantText(
                                      text: "\$",
                                      fontSize: width * 0.0138,
                                      fontWeight: FontWeight.w600,
                                      textColor: colorGreen),

                                ],
                              ),
                              SizedBox(height: height*0.003),

                              WantText(
                                  text: "RS 1,847",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),
                              SizedBox(height: height*0.003),

                              WantText(
                                  text: "Outstanding balance",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w400,
                                  textColor: colorGreen),
                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                  SizedBox(height: height*0.023),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding:  EdgeInsets.all(width*0.009),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(width*0.008),
                            boxShadow: [
                              BoxShadow(
                                color: colorBoxshadow.withOpacity(0.1),
                                blurRadius: 2,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WantText(
                                  text: "Recent Borrowing History",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),
                              SizedBox(height: height*0.016),
                              Divider(color: colorGreyBorder, thickness: 1),
                              SizedBox(height: height*0.016),

                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: borrowingHistory.length,
                                itemBuilder: (context, index) {
                                  var history = borrowingHistory[index];
                                  return Padding(
                                    padding: EdgeInsets.only(bottom: height*0.028),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: width * 0.0274,
                                          width: width * 0.0274,
                                          child: Image.asset(
                                            history['image']!,
                                            width: width * 0.027,
                                            height: width * 0.027,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              WantText(
                                                  text: history['name']!,
                                                  fontSize: width * 0.011,
                                                  fontWeight: FontWeight.w600,
                                                  textColor: colorBlack),
                                              WantText(
                                                  text: history['book']!,
                                                  fontSize: width * 0.0097,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: colorDarkGreyText),

                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: width*0.007, vertical: height*0.004),
                                          decoration: BoxDecoration(
                                            color: history['status'] == 'Returned'
                                                ? colorLightGreen
                                                : history['status'] == 'Due Today'
                                                ? colorLightYellow
                                                : colorPinkContainer,
                                            borderRadius: BorderRadius.circular(width*0.016),
                                          ),
                                          child:
                                          WantText(
                                              text: history['status']!,
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              textColor:  history['status'] == 'Returned'
                                                  ? colorDarkGreen
                                                  : history['status'] == 'Due Today'
                                                  ? colorBrown
                                                  : colorRedCalendar),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: height*0.028),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.011,),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WantText(
                                  text: "Reservation Requests",
                                  fontSize: width * 0.0125,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),
                              SizedBox(height: height*0.016),
                              Divider(color: colorGreyBorder, thickness: 1),
                              SizedBox(height: height*0.016),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: reservationRequests.length,
                                itemBuilder: (context, index) {
                                  var request = reservationRequests[index];
                                  return Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: height*0.028),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                            children: [

                                              WantText(
                                                text:request['book']!,
                                                fontSize: width * 0.011,
                                                fontWeight: FontWeight.w500,
                                                textColor: colorBlack,
                                              ),
                                              WantText(
                                                text:request['time']!,
                                                fontSize: width * 0.0097,
                                                fontWeight: FontWeight.w400,
                                                textColor: colorDarkGreyText,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: height*0.008,),

                                          WantText(
                                            text: "Requested by: ${request['user']}",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorDarkGreyText,
                                          ),
                                          SizedBox(height: height*0.01,),
                                          Row(
                                            children: [
                                              CustomButton(Width: width*0.058, onTap: (){},label: "Approve",fontSize: width*0.0097,paddingVertical: height*0.005,),
                                              SizedBox(width: width*0.01,),
                                              Container(
                                                width: width*0.058,
                                                padding: EdgeInsets.symmetric(vertical:height * 0.005),
                                                decoration: BoxDecoration(
                                                  color: colorBox,
                                                  border: Border.all(color:  colorBox),
                                                  borderRadius:  BorderRadius.circular(width * 0.0083),
                                                  ),
                                                child:  Center(
                                                  child: WantText(
                                                    text: "Deny",
                                                    fontSize: width * 0.0097,
                                                    fontWeight: FontWeight.w500,
                                                    textColor: colorBlack,
                                                  ),
                                                ),
                                                ),


                                            ],
                                          )

                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height*0.023),

                  Container(
                    padding: EdgeInsets.all(width*0.016),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width * 0.008),
                      boxShadow: [
                        BoxShadow(
                          color: colorBoxShadow.withOpacity(0.1),
                          blurRadius: 2,
                          offset: Offset(0, 3),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WantText(
                            text: "Fine Management",
                            fontSize: width * 0.0138,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
                        SizedBox(height: height*0.023,),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(width * 0.006),
                            boxShadow: [
                              BoxShadow(
                                color: colorBoxShadow.withOpacity(0.1),
                                blurRadius: 2,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Table(
                            border: TableBorder(
                              horizontalInside: BorderSide(
                                color: colorBox,
                                width: width * 0.001,
                              ),
                            ),
                            columnWidths: const {
                              0: FlexColumnWidth(1), // Date Column
                              1: FlexColumnWidth(1), // Mode Column
                              2: FlexColumnWidth(1), // Mode Column
                              3: FlexColumnWidth(1), // Mode Column
                              4: FlexColumnWidth(1), // Mode Column
                              5: FlexColumnWidth(1), // Mode Column
                            },
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            children: [
                              TableRow(
                                decoration: BoxDecoration(
                                    color: colorLightGrey,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(width * 0.008),
                                        topLeft: Radius.circular(width * 0.008))

                                  // Set heading row background color
                                ),
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'User',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'Book',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center,),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'Fine Amount',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center,),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'Due Date',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center,),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'Status',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center,),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top:height * 0.016,bottom: height * 0.016,),
                                    child: WantText(
                                      text: 'Action',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack,
                                      textAlign: TextAlign.center,),
                                  ),


                                ],
                              ),
                              // Table Rows (Data)
                              TableRow(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: width * 0.0182,
                                          width: width * 0.0182,
                                          child: Image.asset(
                                            "assets/images/performancemrs.png",
                                            width: width * 0.018,
                                            height: width * 0.018,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        SizedBox(width: width*0.005,),
                                        WantText(
                                            text: 'David Kim',
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorBlack,
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: 'The Hobbit',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: '\$12.50',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: 'Mar 15, 2025',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack,
                                        textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: height * 0.011),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.006, vertical: height * 0.006),
                                        decoration: BoxDecoration(
                                          color: colorPinkContainer,
                                          borderRadius: BorderRadius.circular(width * 0.02),
                                        ),
                                        child: WantText(
                                          text: 'Unpaid',
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w600,
                                          textColor: colorRedCalendar,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: height * 0.011),
                                    child:WantText(
                                        text: 'Send Reminder',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorMainTheme,
                                        textAlign: TextAlign.center),
                                  ),




                                ],
                              ),



                            ],
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

