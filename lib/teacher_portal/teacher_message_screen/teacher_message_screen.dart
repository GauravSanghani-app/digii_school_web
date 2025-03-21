
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/custom_button.dart';

class TeacherMessageScreen extends StatefulWidget {
  @override
  _TeacherMessageScreenState createState() => _TeacherMessageScreenState();
}

class _TeacherMessageScreenState extends State<TeacherMessageScreen> {
  final List<Map<String, String>> messages = [];
  final TextEditingController messageController = TextEditingController();

  void sendMessage() {
    if (messageController.text.trim().isEmpty) return;

    setState(() {
      messages.add({
        'name': 'You',
        'message': messageController.text.trim(),
        'time': TimeOfDay.now().format(context),
      });
    });

    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
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
                padding: EdgeInsets.symmetric(vertical: width*0.006,horizontal: height*0.016),
                child: Column(
                  children: [
                    // Header Section
                    Container(
                      width: width,
                      padding: EdgeInsets.all(width *0.005),
                      decoration: BoxDecoration(
                        color: colorHeaderCon,
                        borderRadius: BorderRadius.circular(width*0.0138),
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios,color: colorBlack,size: height*0.026)),
                          SizedBox(width: width*0.016),
                          Row(
                            children: [
                              SizedBox(
                                  width: width * 0.02,
                                  child:Image.asset("assets/icons/teacherMessage.png")
                              ),
                              SizedBox(width: width * 0.01),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: 'Class 10-A',
                                      fontSize: width * 0.0125,
                                      fontWeight: FontWeight.w600,
                                      textColor: colorBlack),
                                  WantText(
                                      textOverflow: TextOverflow.ellipsis,
                                      text: '32 students',
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorBlack),
                                ],
                              ),
                            ],
                          ),

                          Spacer(),
                          Row(
                            children: [
                              Icon(Icons.call,color: colorGreyTextLogIn,size: width*0.0138,),
                              SizedBox(width: width * 0.01),
                              Image.asset("assets/icons/teacherVideo.png",color: colorGreyTextLogIn,width: width*0.0140,),
                              SizedBox(width: width * 0.01),

                              Icon(Icons.more_vert,color: colorGreyTextLogIn,size: width*0.0138,),

                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.003),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.006, vertical: height * 0.02),
                        decoration: BoxDecoration(
                          color: colorChat,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(width*0.0083), topRight: Radius.circular(width*0.0083)),
                        ),
                        child: messages.isEmpty
                            ? Center(child: Text("No messages yet"))
                            : ListView.builder(
                          itemCount: messages.length,
                          itemBuilder: (context, index) {
                            final message = messages[index];
                            return MessageBubble(
                              name: message['name']!,
                              message: message['message']!,
                              time: message['time']!,
                              isTeacher: message['name'] == 'Class Teacher',
                            );
                          },
                        ),
                      ),
                    ),

                    // Input Field
                    SizedBox(

                      height: width * 0.04,
                      child: Container(
                        padding: EdgeInsets.all(width * 0.005),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/addlink.png",
                              width: width * 0.013,
                            ),
                            SizedBox(width: width * 0.008),
                            Expanded(
                              child: TextField(
                                controller: messageController,
                                decoration: InputDecoration(
                                  hintText: 'Type Your Message here...',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.send, color: Colors.blue, size: width * 0.02),
                              onPressed: sendMessage,
                            ),
                            Image.asset(
                              "assets/images/mic.png",
                              fit: BoxFit.fill,height: width * 0.02,
                              width: width * 0.02,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


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
                WantText(text: "Messages", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                SizedBox(height: height * 0.023),

                CustomButton(
                  Width: width*0.113,
                  onTap: (){},
                  paddingVertical: height*0.008,
                  labelWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/teacheredit.png",width: width*0.012,color: colorWhite,),
                      SizedBox(width: width*0.008,),
                      WantText(
                          text: "New Message",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w400,
                          textColor: colorWhite),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.016),

                Divider(color: colorDivider,thickness: 1,),
                SizedBox(height: height * 0.016),
                Container(
                  width: width,
                  padding: EdgeInsets.all( width*0.008),
                  decoration: BoxDecoration(
                    color: colorChat,
                    borderRadius: BorderRadius.circular(width*0.008),

                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/teacherhome3.png",width: width*0.012,color: colorGreyTextLogIn,),
                      SizedBox(width: width*0.008,),
                      WantText(
                          text: "Student Groups",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w500,
                          textColor: colorBlack),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.023),
                Row(
                  children: [
                    SizedBox(width: width*0.01,),
                    Image.asset("assets/icons/teacherMessage.png",width: width*0.012,color: colorGreyTextLogIn,),
                    SizedBox(width: width*0.008,),
                    WantText(
                        text: "Class 10-A",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textColor: colorBlack),
                  ],
                ),
                SizedBox(height: height * 0.023),
                Row(
                  children: [
                    SizedBox(width: width*0.01,),
                    Image.asset("assets/icons/teacherMessage.png",width: width*0.012,color: colorGreyTextLogIn,),
                    SizedBox(width: width*0.008,),
                    WantText(
                        text: "Class 11-B",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textColor: colorBlack),
                  ],
                ),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all( width*0.008),
                  decoration: BoxDecoration(
                    color: colorChat,
                    borderRadius: BorderRadius.circular(width*0.008),

                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/teacherAd.png",width: width*0.012,color: colorGreyTextLogIn,),
                      SizedBox(width: width*0.008,),
                      WantText(
                          text: "Administration",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w500,
                          textColor: colorBlack),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.023),
                Row(
                  children: [
                    SizedBox(width: width*0.01,),
                    Image.asset("assets/icons/teacherMsg2.png",width: width*0.012,color: colorGreyTextLogIn,),
                    SizedBox(width: width*0.008,),
                    WantText(
                        text: "Principal's Office",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textColor: colorBlack),
                  ],
                ),
                SizedBox(height: height * 0.023),
                Row(
                  children: [
                    SizedBox(width: width*0.01,),
                    Image.asset("assets/icons/teacherMsg3.png",width: width*0.012,color: colorGreyTextLogIn,),
                    SizedBox(width: width*0.008,),
                    WantText(
                        text: "Department Heads",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textColor: colorBlack),
                  ],
                ),

                SizedBox(height: height * 0.023),
                WantText(text: "Shared Files", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                SizedBox(height: height * 0.023),
                Container(
                  width: width,
                  padding: EdgeInsets.all( width*0.008),
                  decoration: BoxDecoration(
                    color: colorLightGrey,
                    borderRadius: BorderRadius.circular(width*0.008),

                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/pdfrecent.png",width: width*0.012,color: colorRedText,),
                      SizedBox(width: width*0.008,),
                      WantText(
                          text: "Mathematics Assignment.pdf",
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textColor: colorBlack),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.018),
                Container(
                  width: width,
                  padding: EdgeInsets.all( width*0.008),
                  decoration: BoxDecoration(
                    color: colorLightGrey,
                    borderRadius: BorderRadius.circular(width*0.008),

                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/teacherShare.png",width: width*0.012,color: colorMainTheme,),
                      SizedBox(width: width*0.008,),
                      WantText(
                          text: "Class Schedule.docx",
                          fontSize: width * 0.0097,
                          fontWeight: FontWeight.w400,
                          textColor: colorBlack),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final bool isTeacher;

  const MessageBubble({
    required this.name,
    required this.message,
    required this.time,
    this.isTeacher = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(name[0], style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, color: isTeacher ? Colors.green : Colors.black),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: isTeacher ? Colors.green[100] : Colors.blue[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(message),
                ),
                SizedBox(height: 5),
                Text(time, style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
