import 'package:digi_school/performance_screen/performance_widget.dart';
import 'package:digi_school/utils/custom_button.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/widgets.dart';


class RecentAchievedScreen extends StatefulWidget {
  @override
  _RecentAchievedScreenState createState() => _RecentAchievedScreenState();
}

class _RecentAchievedScreenState extends State<RecentAchievedScreen> {

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
                                  text: "Recent Achievement",
                                  fontSize: width * 0.0166,
                                  fontWeight: FontWeight.w700,
                                  textColor: colorBlack),
                            ],
                          ) ,
                        ),

                        SizedBox(height: height * 0.03),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WantText(
                                fontFamily: "Roboto",
                                text: 'Science Fair Project',
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                            WantText(
                                fontFamily: "Roboto",
                                text: '1st Place',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorGreen),
                          ],
                        ),
                        SizedBox(height: height * 0.023),

                        SizedBox(
                          height: width * 0.133,
                          width: width ,
                          child: Image.asset("assets/images/scienceproject.png"),
                        ),

                        SizedBox(height: height * 0.023),
                        Container(
                          width: width,
                          padding: EdgeInsets.all(width *0.008),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(width *0.0083),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width * 0.585,
                                child: WantText(
                                    fontFamily: "Roboto",
                                    text: 'Volcanic Reactions Study',
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w500,
                                    textColor: colorBlack),
                              ),
                              SizedBox(height: height * 0.01),
                              SizedBox(
                                width: width*0.2,
                                child: WantText(
                                    textOverflow: TextOverflow.fade,
                                    fontFamily: "Roboto",
                                    text: 'An in-depth study of chemical reactions in volcanic activities',
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorGreyTextLogIn),
                              ),
                              SizedBox(height: height * 0.01),
                              Row(

                                children: [
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'March 15, 2025',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  SizedBox(width: width * 0.45),
                                  GestureDetector(
                                    onTap: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewCertificateScreen(),));

                                    },
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: width * 0.0097,
                                          width: width * 0.0097,
                                          child: Image.asset("assets/icons/viewcerti.png"),
                                        ),
                                        SizedBox(width: width * 0.01),
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: 'View Certificate',
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w500,
                                            textColor: colorMainTheme),
                                      ],
                                    ),
                                  ),


                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.023),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WantText(
                                fontFamily: "Roboto",
                                text: 'Academic Excellence',
                                fontSize: width * 0.0125,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                            WantText(
                                fontFamily: "Roboto",
                                text: 'Honor Roll',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w500,
                                textColor: colorYellow),
                          ],
                        ),
                        SizedBox(height: height * 0.023),
                        Container(
                          width: width,
                          padding: EdgeInsets.all(width *0.008),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(width *0.0083),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                              SizedBox(
                                width: width*0.2,

                                child: WantText(
                                    textOverflow: TextOverflow.fade,
                                    fontFamily: "Roboto",
                                    text: 'Outstanding performance in Science and Mathematics',
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorGreyTextLogIn),
                              ),
                              SizedBox(height: height * 0.01),
                              Row(

                                children: [
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'February 28, 2025',
                                      fontSize: width * 0.0083,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  SizedBox(width: width * 0.44),
                                  SizedBox(
                                    height: width * 0.0097,
                                    width: width * 0.0097,
                                    child: Image.asset("assets/icons/viewcerti.png"),
                                  ),
                                  SizedBox(width: width * 0.01),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: 'Download Certificate',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorMainTheme),

                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.18),





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
                borderRadius: BorderRadius.circular(width*0.008),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SizedBox(height: height * 0.02),
                    WantText(
                        fontFamily: "Roboto",
                        text: "View  and download certificate",
                        fontSize: width * 0.0125,
                        fontWeight: FontWeight.w700,
                        textColor: colorBlack),
                    SizedBox(height: height * 0.02),
                    Container(
                      width: width,
                      padding: EdgeInsets.all(width *0.005),
                      decoration: BoxDecoration(
                        color: colorCertificate,
                        borderRadius: BorderRadius.circular(width *0.0083),
                        border: Border(

                          bottom: BorderSide(color: colorGrey,),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: colorGrey.withOpacity(0.7),
                            offset: Offset(0, 1), // Shadow below the container
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: SizedBox(
                        height: height * 0.273,
                        width: width,
                        child: Image.asset("assets/images/viewcerti.png"),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    CustomButton(Width: width, onTap: (){}, label: "Download")





                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
