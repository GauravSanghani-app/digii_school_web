
import 'package:digi_school/dashboard/home_screen/notic_widget.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  List<Map<String, dynamic>> accounts = [
    {
      "name": "Sarah Johnson",
      "class": "Class 12th A",
      "image": "assets/images/person.png",
      "bgColor": Color.fromRGBO(220, 255, 221, 1),
      "selected": true
    },
    {
      "name": "Aryan Sharma",
      "class": "Class 8th C",
      "image": "assets/images/boy.png",
      "bgColor": Color.fromRGBO(255, 226, 174, 0.7),
      "selected": false
    },
  ];

  void selectAccount(int index) {
    setState(() {
      for (var i = 0; i < accounts.length; i++) {
        accounts[i]["selected"] = (i == index);
      }
    });
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
                  padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      WantText(
                          text: "Student Information",
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.02),

                      Container(
                        width: width,
                        padding: EdgeInsets.all( width * 0.008),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width * 0.007),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                WantText(
                                    text: "Name:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.042),
                                WantText(
                                    text: "Ananya Sharma",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Class:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.043),
                                WantText(
                                    text: "12th Standard",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Section:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.035),
                                WantText(
                                    text: "A",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Roll. no.:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.031),
                                WantText(
                                    text: "12",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Reg. no.:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.031),
                                WantText(
                                    text: "342561",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Date of Birth:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.012),
                                WantText(
                                    text: "3 October 2006",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Blood Group:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.013),
                                WantText(
                                    text: "B+ve",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Email:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.043),
                                WantText(
                                    text: "ananya.sharma@example.com",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Address:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.031),
                                WantText(
                                    text: "45/3, Church Street, Green Street",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),

                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Hobbies:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.032),
                                WantText(
                                    text: "Football, Coding, Reading novels",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),

                          ],
                        ),




                      ),

                      SizedBox(height: height * 0.02),
                      WantText(
                          text: "Parents / Guardian Information",
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.02),

                      Container(
                        width: width,
                        padding: EdgeInsets.all( width * 0.008),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width * 0.007),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                WantText(
                                    text: "Father’s Name:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.0475),
                                WantText(
                                    text: "Rajesh Sharma",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Father’s Occupation:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.0225),
                                WantText(
                                    text: "Doctor",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Father’s Qualification:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.0165),
                                WantText(
                                    text: "MBBS",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Father’s Mobile no.:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.026),
                                WantText(
                                    text: "2345678789",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Mother’s Name:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.0425),
                                WantText(
                                    text: "Anita Sharma",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Mother’s Occupation:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.0185),
                                WantText(
                                    text: "Doctor",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Mother’s Qualification:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.013),
                                WantText(
                                    text: "MBBS",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Mother’s Mobile no.:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.0225),
                                WantText(
                                    text: "2345678789",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                WantText(
                                    text: "Emergency Mobile no.:",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorDarkGreyText),
                                SizedBox(width: width*0.012),
                                WantText(
                                    text: "7896958434",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorBlack),
                              ],
                            ),

                          ],
                        ),




                      ),
                      SizedBox(height: height*0.09),


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
          WantText(text: "Switch Account", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
          SizedBox(height: height * 0.02),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: accounts.length,
            itemBuilder: (context, index) {
              var account = accounts[index];
              return GestureDetector(
                onTap: () => selectAccount(index),
                child: Container(
                  margin:EdgeInsets.symmetric(vertical: width*0.006),
                  padding: EdgeInsets.all(width*0.008),
                  decoration: BoxDecoration(
                    color: account["bgColor"],
                    borderRadius: BorderRadius.circular(width*0.007),
                  ),
                  child: Row(
                    children: [

                      Image.asset(
                        account["image"],
                        height: width * 0.05,
                        width: width * 0.05,
                      ),
                     SizedBox(width: width*0.01),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WantText(
                                text: account["name"],
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack),
                            SizedBox(
                              height: height * 0.006,
                            ),
                            WantText(
                                text: account["class"],
                                fontSize: width * 0.012,
                                fontWeight: FontWeight.w500,
                                textColor: colorBlack),

                          ],
                        ),
                      ),
                      Icon(
                        account["selected"]
                            ? Icons.check_circle
                            : Icons.radio_button_unchecked,
                        color: account["selected"] ? Colors.blue : Colors.grey,
                        size: width*0.0166,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          SizedBox(height: height * 0.02),

          Container(
            padding: EdgeInsets.all(width*0.003),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(width*0.0083),
              border: Border.all(width: 1,color: colorBlack)
            ),
            child: Row(
              children: [
                Icon(Icons.add_circle, color: colorMainTheme,size: width*0.028),
                SizedBox(width: width*0.03),
                WantText(
                    text: "Add Account",
                    fontSize: width * 0.014,
                    fontWeight: FontWeight.w600,
                    textColor: colorBlack),
              ],
            ),
          ),

          SizedBox(height: height * 0.02),

          GestureDetector(
            onTap: () {
              // Logout action
            },
            child: Container(
              padding:  EdgeInsets.all(width*0.008),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 81, 81, 1),
                borderRadius: BorderRadius.circular(width*0.007),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/move.png",width: width*0.02,),
                  SizedBox(width: width*0.01),
                  WantText(
                      text: "Log Out",
                      fontSize: width * 0.014,
                      fontWeight: FontWeight.w600,
                      textColor: colorBlack),
                ],
              ),
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
