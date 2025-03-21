
import 'package:digi_school/dashboard/navigation_page/navigation_screen.dart';
import 'package:digi_school/student_portal/attendance_screen/attendance_screen.dart';
import 'package:digi_school/student_portal/classroom_screen/classroom_screen.dart';
import 'package:digi_school/student_portal/exam_screen/exam_record_screen.dart';
import 'package:digi_school/student_portal/fees_screen/fee_screen.dart';
import 'package:digi_school/student_portal/home_screen/home_screen.dart';
import 'package:digi_school/student_portal/home_screen/notification_screen.dart';
import 'package:digi_school/student_portal/message_screen/messages_screen.dart';
import 'package:digi_school/student_portal/performance_screen/performance_Screen.dart';
import 'package:digi_school/student_portal/phone_details_screen/phone_details_screen.dart';
import 'package:digi_school/student_portal/profile_screen/profile_screen.dart';
import 'package:digi_school/student_portal/transport_details/transport_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ClassroomScreen(),
    AttendanceScreen(),
    ExamRecordScreen(),
    PerformanceScreen(),
    MessagesScreen(),
    TransportScreen(),
    FeeScreen(),
    PhoneScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Column(
        children: [
          SizedBox(
            height: height*0.088,
            child: Container(
                width: width,
                color: colorBoxBackground,
                child: Padding(
                  padding: EdgeInsets.all(width*0.007),
                  child: Row(
                    children: [
                      SizedBox(
                          height: height * 0.054,
                          width: width * 0.097,
                          child: Image.asset(
                            'assets/images/Logologin.png',
                            fit: BoxFit.fill,
                          )),

                      SizedBox(width: width*0.03),
                      Container(
                        height: width * 0.2256,

                        child: Image.asset(
                          "assets/images/parentimag.png",
                          width: width * 0.044,
                          height: width * 0.044,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: width*0.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WantText(text: "Sarah Johnson", fontSize: width*0.013, fontWeight: FontWeight.w700, textColor: colorBlack),
                          WantText(text: "Class X-A | Roll No: 15", fontSize: width*0.009, fontWeight: FontWeight.w400, textColor: colorDarkGreyText),

                        ],
                      ),
                      SizedBox(width: width*0.5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          WantText(text: "Academic Year", fontSize: width*0.0097, fontWeight: FontWeight.w400, textColor: colorDarkGreyText),
                          WantText(text: "2024-2025", fontSize: width*0.011, fontWeight: FontWeight.w500, textColor: colorBlack),

                        ],
                      ),
                      SizedBox(width: width*0.02,),

                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                          },
                          child: Image.asset("assets/icons/notification.png",width: width*0.02,)),

                      SizedBox(width: width*0.02,),
                      Image.asset("assets/icons/move.png",width: width*0.02,),


                    ],
                  ),
                )
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: width*0.003,top: height*0.01),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    child: NavigationRail(
                      minWidth: width * 0.05,
                      selectedIndex: _selectedIndex,
                      onDestinationSelected: _onItemTapped,
                      labelType: NavigationRailLabelType.all,
                      backgroundColor: colorMainTheme,
                      selectedLabelTextStyle: TextStyle(
                        color: colorYellow,
                        fontSize: width * 0.007,
                        fontWeight: FontWeight.w400,
                      ),
                      unselectedLabelTextStyle: TextStyle(
                        color: colorWhite,
                        fontSize: width * 0.007,
                        fontWeight: FontWeight.w400,
                      ),
                      useIndicator: false,
                      destinations: [
                        NavigationRailDestination(
                          icon: Padding(
                            padding: EdgeInsets.only(top: height * 0.035),
                            child: Image.asset("assets/icons/navhome.png", width: width*0.015, height: width*0.015),
                          ),
                          selectedIcon: Padding(
                            padding: EdgeInsets.only(top: height * 0.035),
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                              child: Image.asset("assets/icons/navhome.png", width: width*0.015, height: width*0.015),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Home")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/navclassroom.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navclassroom.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Classroom")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/navattendance.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navattendance.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Attendance")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/navexamrecord.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navexamrecord.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Exam Record")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/navperformance.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navperformance.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Performance")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/navmessage.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navmessage.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Messages")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/navtrance.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navtrance.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Transport")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/navfee.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navfee.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Fees")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/navphone.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navphone.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Phone Details")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/navprofile.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navprofile.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Profile")),
                          ),
                        ),
                      ],
                    ),
                  ),





                  Expanded(
                    child: _screens[_selectedIndex],
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }


}

