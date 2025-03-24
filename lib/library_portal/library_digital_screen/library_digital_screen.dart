
import 'package:digi_school/library_portal/library_digital_screen/library_add_ebook.dart';
import 'package:digi_school/library_portal/library_digital_screen/library_add_journal.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LibraryDigitalScreen extends StatefulWidget {
  @override
  _LibraryDigitalScreenState createState() => _LibraryDigitalScreenState();
}

class _LibraryDigitalScreenState extends State<LibraryDigitalScreen> {
  final TextEditingController _searchController = TextEditingController();


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
                                      text: "Total E- Books",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Image.asset('assets/images/medals1.png',width: width*0.018,color: colorMainTheme,),

                                ],
                              ),
                              SizedBox(height: height*0.005),

                              WantText(
                                  text: "2,456",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),

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
                                      text: "Journals",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Image.asset('assets/images/digital.png',width: width*0.013,color: colorGreenCalendar,),

                                ],
                              ),
                              SizedBox(height: height*0.005),

                              WantText(
                                  text: "142",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),

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
                                      text: "Active Users",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Image.asset('assets/icons/teacherhome1.png',width: width*0.018,color: colorPurple,),


                                ],
                              ),
                              SizedBox(height: height*0.005),

                              WantText(
                                  text: "2,845",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),

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
                                      text: "Downloads",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  Image.asset('assets/icons/buttondown.png',width: width*0.013,color: colorOrange,),



                                ],
                              ),
                              SizedBox(height: height*0.003),

                              WantText(
                                  text: "12.7k",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),

                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                  SizedBox(height: height*0.023),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      WantText(
                          text: "E-Books",
                          fontSize: width * 0.016,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      Row(
                        children: [
                          Container(
                            width: width*0.1778,
                            decoration: BoxDecoration(
                                color: colorLightGrey,
                                borderRadius: BorderRadius.circular(width*0.008),
                                border: Border.all(color: colorGreyBorder)
                            ),
                            padding:  EdgeInsets.symmetric(horizontal: width*0.006),
                            child:  Row(
                              children: [
                                Icon(Icons.search, color: colorDarkGreyText),
                                SizedBox(width: width*0.006),
                                Expanded(
                                  child: TextField(
                                    controller: _searchController,
                                    decoration: InputDecoration(
                                      hintText: 'Search e-books...',
                                      hintStyle: TextStyle(color: colorGreyText),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width*0.01),

                          CustomButton(
                            Width: width*0.086,
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LibraryAddEbook()));
                            },
                            paddingVertical: height*0.013,
                            labelWidget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add,color: colorWhite,size: width*0.012,),
                                SizedBox(width: width*0.005,),
                                WantText(
                                    text: "Add New",
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorWhite),
                              ],
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.023),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: width*0.1835,
                        padding:  EdgeInsets.all(width*0.006),

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
                            ClipRRect(
                              // borderRadius: BorderRadius.vertical(top: Radius.circular(width * 0.008)),
                              child: Image.asset('assets/images/digital1.png',width: width, fit: BoxFit.cover,),

                            ),
                            SizedBox(height: height*0.005,),

                            SizedBox(
                              width:width*0.145,
                              child: WantText(
                                  text: "Introduction to Computer Science",
                                  fontSize: width * 0.011,
                                  textOverflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorBlack),
                            ),
                            SizedBox(height: height*0.005,),

                            WantText(
                                text: "By John Smith",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                            SizedBox(height: height*0.005,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                    text: "PDF • 12MB",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorCustomButton),

                               Icon(Icons.remove_red_eye,color: colorCustomButton,)
                              ],
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: width*0.1835,
                        padding:  EdgeInsets.all(width*0.006),

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
                            ClipRRect(
                              // borderRadius: BorderRadius.vertical(top: Radius.circular(width * 0.008)),
                              child: Image.asset('assets/images/digital2.png',width: width, fit: BoxFit.cover,),

                            ),
                            SizedBox(height: height*0.005,),

                            SizedBox(
                              width:width*0.145,
                              child: WantText(
                                  text: "Advanced Mathematics",
                                  fontSize: width * 0.011,
                                  textOverflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorBlack),
                            ),
                            SizedBox(height: height*0.005,),

                            WantText(
                                text: "By Emily Brown",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                            SizedBox(height: height*0.005,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                    text: "PDF • 8MB",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorCustomButton),

                               Icon(Icons.remove_red_eye,color: colorCustomButton,)
                              ],
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: width*0.1835,
                        padding:  EdgeInsets.all(width*0.006),

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
                            ClipRRect(
                              // borderRadius: BorderRadius.vertical(top: Radius.circular(width * 0.008)),
                              child: Image.asset('assets/images/digital3.png',width: width, fit: BoxFit.cover,),

                            ),
                            SizedBox(height: height*0.005,),

                            SizedBox(
                              width:width*0.145,
                              child: WantText(
                                  text: "Physics Fundamentals",
                                  fontSize: width * 0.011,
                                  textOverflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorBlack),
                            ),
                            SizedBox(height: height*0.005,),

                            WantText(
                                text: "By Robert Johnson",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                            SizedBox(height: height*0.005,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                    text: "PDF • 15MB",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorCustomButton),

                               Icon(Icons.remove_red_eye,color: colorCustomButton,)
                              ],
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: width*0.1835,
                        padding:  EdgeInsets.all(width*0.006),

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
                            ClipRRect(
                              // borderRadius: BorderRadius.vertical(top: Radius.circular(width * 0.008)),
                              child: Image.asset('assets/images/digital4.png',width: width, fit: BoxFit.cover,),

                            ),
                            SizedBox(height: height*0.005,),

                            SizedBox(
                              width:width*0.145,
                              child: WantText(
                                  text: "Modern Biology",
                                  fontSize: width * 0.011,
                                  textOverflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorBlack),
                            ),
                            SizedBox(height: height*0.005,),

                            WantText(
                                text: "By Sarah Wilson",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorGreyTextLogIn),
                            SizedBox(height: height*0.005,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                WantText(
                                    text: "PDF • 10MB",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorCustomButton),

                               Icon(Icons.remove_red_eye,color: colorCustomButton,)
                              ],
                            ),

                          ],
                        ),
                      ),



                    ],
                  ),
                  SizedBox(height: height*0.023),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      WantText(
                          text: "Online Journals",
                          fontSize: width * 0.016,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),


                      CustomButton(
                        Width: width*0.090,
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LibraryAddJournal()));
                        },
                        paddingVertical: height*0.013,
                        labelWidget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: colorWhite,size: width*0.012,),
                            SizedBox(width: width*0.005,),
                            WantText(
                                text: "Add Journal",
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w400,
                                textColor: colorWhite),
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.023),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

