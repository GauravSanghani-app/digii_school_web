
import 'package:digi_school/dashboard/home_screen/notic_widget.dart';
import 'package:digi_school/utils/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


class AddPostScreen extends StatefulWidget {
  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {


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
                                text: "Add Post",
                                fontSize: width * 0.0166,
                                fontWeight: FontWeight.w700,
                                textColor: colorBlack),
                          ],
                        ) ,
                      ),

                      SizedBox(
                        height: height * 0.02,
                      ),
                      WantText(
                          text: 'Post Details',
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      Container(
                        width: width,
                        padding: EdgeInsets.all(width * 0.008),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width*0.0083),
                        ),
                        child:TextFormField(maxLines: 3,
                          decoration: InputDecoration(
                            hintText: 'Enter the full details of your post',
                            hintStyle: TextStyle(fontSize: width * 0.0097,color: colorHostelName),
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: height * 0.02,
                      ),
                      WantText(
                          text: 'Add Attachment',
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      Container(

                        margin: EdgeInsets.symmetric(horizontal: 20),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.0083),
                          border: Border.all(color: colorGreyText, width: 2), // Outer border
                        ),
                        child: Row(
                          children: [
                            // PDF Section
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(width*0.01),

                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.only(topLeft: Radius.circular(width*0.0083),bottomLeft:Radius.circular(width*0.0083), ) ,
                                  color: Color.fromRGBO(255, 228, 228, 1),
                                ),// Light pink
                                child:    Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: width * 0.027,
                                      width: width * 0.027,
                                      child: Image.asset(
                                          "assets/images/chatpdf.png"),
                                    ),

                                    SizedBox(height: height*0.005,),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: 'Pdf',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorMainTheme),


                                  ],
                                ),
                              ),
                            ),


                            Container(width: 2, color: colorGreyText),

                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(width*0.01),

                                color: Color.fromRGBO(255, 247, 223, 1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(

                                      height: width * 0.027,
                                      width: width * 0.027,
                                      child: Image.asset(
                                          "assets/images/chatphoto.png"),
                                    ),


                                    WantText(
                                        fontFamily: "Roboto",
                                        text: 'Image',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorMainTheme),


                                  ],
                                ),
                              ),
                            ),


                            Container(width: 2, color: colorGreyText),


                            Expanded(
                              child: Container(

                                padding: EdgeInsets.all(width*0.01),

                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.only(topRight: Radius.circular(width*0.0083),bottomRight:Radius.circular(width*0.0083), ) ,
                                  color: Color.fromRGBO(200, 234, 255, 0.8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: width * 0.027,
                                      width: width * 0.027,
                                      child: Image.asset(
                                          "assets/images/chatlink.png"),
                                    ),


                                    SizedBox(height: height*0.004,),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: 'Link',
                                        fontSize: width * 0.0083,
                                        fontWeight: FontWeight.w600,
                                        textColor: colorMainTheme),


                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomButton(Width: width, onTap: (){}, label: "Send Post"),

                      SizedBox(
                        height: height * 0.02
                      ),
                      WantText(
                          text: 'Your Posts',
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.016),


                      Container(
                        width: width,
                        padding: EdgeInsets.all(width * 0.008),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width*0.0083),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [

                                Image.asset(
                                  "assets/images/principle.png",width: width * 0.034,),
                                SizedBox(width: width * 0.01),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "Mrunal Patel",
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack),
                                        SizedBox(width: width*0.47),
                                        Column(
                                          children: [
                                            Image.asset("assets/images/delete.png",width: width*0.035,height: height*0.02,),
                                            WantText(
                                                text: "delete",
                                                fontSize: width * 0.007,
                                                fontWeight: FontWeight.w500,
                                                textColor: colorPinkText),
                                          ],
                                        ),

                                      ],
                                    ),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "15 mins ago",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: height * 0.009),
                            WantText(
                                textOverflow: TextOverflow.fade,
                                fontFamily: "Roboto",
                                text:
                                'Final exams for Class 12 will begin on 5th February 2025. Best of luck to all students!',
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                            SizedBox(height: height * 0.009),
                            Row(
                              children: [

                                Image.asset(
                                  "assets/images/paper.png",width: width * 0.0083,),
                                SizedBox(width: width * 0.005),
                                WantText(
                                    fontFamily: "Roboto",
                                    text: "View Exam Schedule",
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorMainTheme),
                              ],
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/like.png",width: width * 0.012,),

                                SizedBox(width: width * 0.003),
                                WantText(
                                    fontFamily: "Roboto",
                                    text: "120",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                                SizedBox(width: width * 0.01),
                                Image.asset(
                                  "assets/images/chat.png",width: width * 0.012,),
                                SizedBox(width: width * 0.003),

                                WantText(
                                    fontFamily: "Roboto",
                                    text: "25",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                                SizedBox(width: width * 0.009),
                                Image.asset(
                                  "assets/images/paperairplane.png",width: width * 0.012,),
                                SizedBox(width: width * 0.003),

                                WantText(
                                    fontFamily: "Roboto",
                                    text: "2",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                              ],
                            ),

                          ],
                        ),
                      ),



                      SizedBox(height: height * 0.022),

                      Container(
                        width: width,
                        padding: EdgeInsets.all(width * 0.008),
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(width*0.0083),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [

                                Image.asset(
                                  "assets/images/principle.png",width: width * 0.034,),
                                SizedBox(width: width * 0.01),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        WantText(
                                            fontFamily: "Roboto",
                                            text: "Mrunal Patel",
                                            fontSize: width * 0.011,
                                            fontWeight: FontWeight.w600,
                                            textColor: colorBlack),
                                        SizedBox(width: width*0.47),
                                        Column(
                                          children: [
                                            Image.asset("assets/images/delete.png",width: width*0.035,height: height*0.02,),
                                            WantText(
                                                text: "delete",
                                                fontSize: width * 0.007,
                                                fontWeight: FontWeight.w500,
                                                textColor: colorPinkText),
                                          ],
                                        ),

                                      ],
                                    ),
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: "15 mins ago",
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorDarkGreyText),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: height * 0.009),
                            WantText(
                                textOverflow: TextOverflow.fade,
                                fontFamily: "Roboto",
                                text:
                                "Yesterday's assembly was nothing short of spectacular! 🎉\nI am beyond proud of my wonderful Class 8A students for their outstanding performance in the inter-class assembly competition. 🌟✨",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorBlack),
                            SizedBox(height: height * 0.009),
                            Center(
                              child: Image.asset(
                                  "assets/images/dashnoti.png",width: width*0.194 ),
                            ),

                            SizedBox(height: height * 0.009),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/like.png",width: width * 0.012,),

                                SizedBox(width: width * 0.003),
                                WantText(
                                    fontFamily: "Roboto",
                                    text: "120",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                                SizedBox(width: width * 0.01),
                                Image.asset(
                                  "assets/images/chat.png",width: width * 0.012,),
                                SizedBox(width: width * 0.003),

                                WantText(
                                    fontFamily: "Roboto",
                                    text: "25",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                                SizedBox(width: width * 0.009),
                                Image.asset(
                                  "assets/images/paperairplane.png",width: width * 0.012,),
                                SizedBox(width: width * 0.003),

                                WantText(
                                    fontFamily: "Roboto",
                                    text: "2",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                              ],
                            ),


                          ],
                        ),
                      ),


                      SizedBox(height: height * 0.04),



                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          NoticWidget(),
        ],
      ),
    );
  }
}
