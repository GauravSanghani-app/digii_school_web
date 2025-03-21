
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/custom_button.dart';

class LibraryBookScreen extends StatefulWidget {
  @override
  _LibraryBookScreenState createState() => _LibraryBookScreenState();
}

class _LibraryBookScreenState extends State<LibraryBookScreen> {
  int selectedIndex = 0;

  final List<String> tabs = ['All Books', 'Available', 'Issued', 'New Arrivals'];


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
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        WantText(
                            text: "Book Management",
                            fontSize: width * 0.016,
                            fontWeight: FontWeight.w700,
                            textColor: colorBlack),
                        Row(
                          children: [
                            Image.asset('assets/icons/libraryBook1.png',width: width*0.012,),
                            SizedBox(width: width*0.006,),

                            WantText(
                                text: "Scan Book",
                                fontSize: width * 0.011,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                            SizedBox(width: width*0.02,),

                            CustomButton(
                              Width: width*0.120,
                              onTap: (){},
                              paddingVertical: height*0.006,
                              labelWidget: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add,color: colorWhite,size: width*0.012,),
                                  SizedBox(width: width*0.008,),
                                  WantText(
                                      text: "Add New Book",
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
                    SizedBox(height: height * 0.023),

                    Container(
                      padding: EdgeInsets.all(width*0.008),

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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: colorLightGrey,
                                    borderRadius: BorderRadius.circular(width*0.008),
                                    border: Border.all(color: colorGreyBorder)
                                  ),
                                  padding:  EdgeInsets.symmetric(horizontal: width*0.008),
                                  child:  Row(
                                    children: [
                                      Icon(Icons.search, color: colorDarkGreyText),
                                      SizedBox(width: width*0.010),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Search by title, author, or ISBN...',
                                            hintStyle: TextStyle(color: colorGreyText),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            SizedBox(width: width*0.008),
                              Container(
                                decoration: BoxDecoration(
                                    color: colorLightGrey,
                                    borderRadius: BorderRadius.circular(width*0.008),
                                    border: Border.all(color: colorGreyBorder)
                                ),
                                padding: EdgeInsets.all(width*0.008),
                                child:Row(
                                  children: [
                                    Image.asset('assets/images/filterdia.png',width: width*0.012,color: colorBlack,),
                                    SizedBox(width: width*0.006),
                                    WantText(
                                        text: "Filters",
                                        fontSize: width * 0.011,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.023),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: List.generate(tabs.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: width*0.010),
                                  child: Container(
                                    padding: EdgeInsets.all(width*0.005),
                                    decoration: BoxDecoration(
                                      color: selectedIndex == index
                                          ? Colors.blue.shade100
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      tabs[index],
                                      style: TextStyle(
                                        color: selectedIndex == index ? Colors.blue : Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.023),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: width*0.1835,
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
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(width * 0.008)),
                                    child: Image.asset('assets/images/libraryBook2.png',width: width, fit: BoxFit.cover,),

                                  ),
                                  Positioned(
                                    top: 8,
                                    right: 8,
                                    child: Container(
                                      padding: EdgeInsets.all(width * 0.004),
                                      decoration: BoxDecoration(
                                        color: colorGreenCalendar,
                                        borderRadius: BorderRadius.circular(width * 0.003),

                                      ),
                                      child: WantText(
                                          text: "Available",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorWhite),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:  EdgeInsets.all(width*0.008),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:width*0.14,
                                      child: WantText(
                                          text: "The Great Gatsby",
                                          fontSize: width * 0.011,
                                          textOverflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorBlack),
                                    ),
                                    SizedBox(height: height*0.005,),

                                    WantText(
                                        text: "F. Scott Fitzgerald",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreyTextLogIn),
                                    SizedBox(height: height*0.005,),

                                    WantText(
                                        text: "ISBN: 978-3-16-148410-0",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreyTextLogIn),
                                    SizedBox(height: height*0.005,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            text: "Copies: 3/5",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreyTextLogIn),

                                        Spacer(),
                                        Image.asset("assets/icons/teacheredit.png",width: width*0.012,color: colorGreysText,),
                                        SizedBox(width: width*0.007,),
                                        Image.asset("assets/icons/teacherdelete.png",width: width*0.012,color: colorGreysText,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          width: width*0.1835,
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
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(width * 0.008)),
                                    child: Image.asset('assets/images/libraryBook3.png',width: width, fit: BoxFit.cover,),

                                  ),
                                  Positioned(
                                    top: 8,
                                    right: 8,
                                    child: Container(
                                      padding: EdgeInsets.all(width * 0.004),
                                      decoration: BoxDecoration(
                                        color: colorYellow,
                                        borderRadius: BorderRadius.circular(width * 0.003),

                                      ),
                                      child: WantText(
                                          text: "Issued",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorWhite),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:  EdgeInsets.all(width*0.008),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:width*0.14,
                                      child: WantText(
                                          text: "Physics: Principles with Applications",
                                          fontSize: width * 0.011,
                                          textOverflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorBlack),
                                    ),
                                    SizedBox(height: height*0.005,),

                                    WantText(
                                        text: "Douglas C. Giancoli",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreyTextLogIn),
                                    SizedBox(height: height*0.005,),

                                    WantText(
                                        text: "ISBN: 978-0-13-602568-3",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreyTextLogIn),
                                    SizedBox(height: height*0.005,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            text: "Copies: 1/3",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreyTextLogIn),

                                        Spacer(),
                                        Image.asset("assets/icons/teacheredit.png",width: width*0.012,color: colorGreysText,),
                                        SizedBox(width: width*0.007,),
                                        Image.asset("assets/icons/teacherdelete.png",width: width*0.012,color: colorGreysText,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          width: width*0.1835,
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
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(width * 0.008)),
                                    child: Image.asset('assets/images/libraryBook4.png',width: width, fit: BoxFit.cover,),

                                  ),
                                  Positioned(
                                    top: 8,
                                    right: 8,
                                    child: Container(
                                      padding: EdgeInsets.all(width * 0.004),
                                      decoration: BoxDecoration(
                                        color: colorMainTheme,
                                        borderRadius: BorderRadius.circular(width * 0.003),

                                      ),
                                      child: WantText(
                                          text: "New",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w400,
                                          textColor: colorWhite),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:  EdgeInsets.all(width*0.008),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:width*0.14,
                                      child: WantText(
                                          text: "Advanced Mathematics",
                                          fontSize: width * 0.011,
                                          textOverflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorBlack),
                                    ),
                                    SizedBox(height: height*0.005,),

                                    WantText(
                                        text: "Robert Smith",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreyTextLogIn),
                                    SizedBox(height: height*0.005,),

                                    WantText(
                                        text: "ISBN: 978-1-23-456789-0",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorGreyTextLogIn),
                                    SizedBox(height: height*0.005,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            text: "Copies: 5/5",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreyTextLogIn),

                                        Spacer(),
                                        Image.asset("assets/icons/teacheredit.png",width: width*0.012,color: colorGreysText,),
                                        SizedBox(width: width*0.007,),
                                        Image.asset("assets/icons/teacherdelete.png",width: width*0.012,color: colorGreysText,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),


                      ],
                    ),

                  ],
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
                WantText(text: "Notifications", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 242, 242, 1),
                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/libraryDash8.png',width: width*0.012,),
                      SizedBox(width: width * 0.012),

                      WantText(
                          text: '5 books are overdue today',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorRedText),
                    ],
                  ),
                ),

                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(239, 246, 255, 1),

                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/quizeerror.png',width: width*0.012,),
                      SizedBox(width: width * 0.012),

                      WantText(
                          text: 'New books added to Science section',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorCustomButton),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all(width*0.011),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 253, 245, 1),
                    borderRadius: BorderRadius.circular(width*0.008), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/libraryDash9.png',width: width*0.012,),
                      SizedBox(width: width * 0.012),

                      WantText(
                          text: 'Monthly report generated',
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textOverflow: TextOverflow.visible,
                          textColor: colorGreenCalendar),
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

