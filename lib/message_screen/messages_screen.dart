
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
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
      body: Expanded(
        child: Row(
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
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                    child:Image.asset("assets/icons/personchat.png")
                                ),
                                SizedBox(width: width * 0.01),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    WantText(
                                        fontFamily: "Roboto",
                                        text: 'Class 12th B',
                                        fontSize: width * 0.0166,
                                        fontWeight: FontWeight.w700,
                                        textColor: colorBlack),
                                    WantText(
                                        textOverflow: TextOverflow.ellipsis,
                                        fontFamily: "Roboto",
                                        text: 'Aryan, Shreya, Mohit, Rohit....',
                                        fontSize: width * 0.0097,
                                        fontWeight: FontWeight.w400,
                                        textColor: colorBlack),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: width * 0.05),
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
                              Icon(Icons.add, color: colorMainTheme, size: height * 0.035),
                              SizedBox(width: width * 0.008),
                              Expanded(
                                child: TextField(
                                  controller: messageController,
                                  decoration: InputDecoration(
                                    hintText: 'Type here...',
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
                  WantText(text: "Recent Activity", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                  SizedBox(height: height * 0.023),
                  Container(
                    width: width,
                    padding: EdgeInsets.all(width*0.008),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(77, 193, 82, 0.33), Colors.white],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      // borderRadius: BorderRadius.circular(8), // Rounded corners
                      border: Border(
                        left: BorderSide(color: Color.fromRGBO(77, 193, 82, 0.66), width: 4),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              const AssetImage('assets/icons/bell.png'),
                              color: colorCustomButton,
                              size: width * 0.0097,
                            ),
                            SizedBox(width: width * 0.006),
                            WantText(
                              text: 'Mathematics Unit Test',
                              fontSize: width * 0.011,
                              fontWeight: FontWeight.w600,
                              textColor: colorBlack,
                              fontFamily: 'Poppins',
                            ),
        
                            Spacer(),
                            WantText(
                              text: '2 days left',
                              fontSize: width * 0.0083,
                              fontWeight: FontWeight.w400,
                              textColor: colorDarkGreyText,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.010),
                        WantText(
                          text: 'Chapter 5: Algebra',
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w400,
                          textColor: colorDarkGreyText,
                        ),
                        SizedBox(height: height * 0.010),
                        Row(
                          children: [
                            ImageIcon(
                              const AssetImage('assets/icons/clock.png'),
                              color: colorDarkGreyText,
                              size: width * 0.0097,
                            ),
                            SizedBox(width: width * 0.006),
                            WantText(
                              text: '9:00 am',
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorDarkGreyText,
                            ),
                            SizedBox(width: width * 0.025),
                            Icon(
                              Icons.calendar_today,
                              color: colorDarkGreyText,
                              size: width * 0.0097,
                            ),
                            SizedBox(width: width * 0.006),
                            WantText(
                              text: '15 March, 2025',
                              fontSize: width * 0.0097,
                              fontWeight: FontWeight.w400,
                              textColor: colorDarkGreyText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  WantText(
                      fontFamily: "Roboto",
                      text: "Group Activity ",
                      fontSize: width * 0.0125,
                      fontWeight: FontWeight.w700,
                      textColor: colorBlack),
                  SizedBox(height: height * 0.02),
                  Container(
                    width: width,
                    padding: EdgeInsets.all(width*0.008),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(246, 173, 43, 0.1), Color.fromRGBO(246, 173, 43, 0.66)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      // borderRadius: BorderRadius.circular(8), // Rounded corners
                      border: Border(
                        left: BorderSide(color: Color.fromRGBO(246, 173, 43, 1), width: 4),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WantText(
                            fontFamily: "Roboto",
                            text: "Science Project Team Lead",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w500,
                            textColor: colorGreyTextLogIn),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        WantText(
                            fontFamily: "Roboto",
                            text: "Led team of 4 students in environmental project",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w400,
                            textColor: colorDarkGreyText),
                      ],
                    ),
                  ),
        
        
        
                ],
              ),
            )
          ],
        ),
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
