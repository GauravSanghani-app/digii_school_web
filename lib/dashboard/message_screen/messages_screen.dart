
import 'package:digi_school/dashboard/message_screen/reminder_widget.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashMessagesScreen extends StatefulWidget {
  @override
  _DashMessagesScreenState createState() => _DashMessagesScreenState();
}

class _DashMessagesScreenState extends State<DashMessagesScreen> {
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


            ReminderWidget(),
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
