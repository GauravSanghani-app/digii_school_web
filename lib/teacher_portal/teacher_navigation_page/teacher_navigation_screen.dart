
import 'package:digi_school/teacher_portal/teacher_classroom_screen/teacher_classroom_screen.dart';
import 'package:digi_school/teacher_portal/teacher_home_screen/teacher_home_screen.dart';
import 'package:digi_school/teacher_portal/teacher_logbook/teacher_log_book.dart';
import 'package:digi_school/teacher_portal/teacher_message_screen/teacher_message_screen.dart';
import 'package:digi_school/teacher_portal/teacher_performance_screen/teacher_performance_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TeacherNavigationScreen extends StatefulWidget {
  @override
  _TeacherNavigationScreenState createState() => _TeacherNavigationScreenState();
}

class _TeacherNavigationScreenState extends State<TeacherNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    TeacherHomeScreen(),
    TeacherLogBook(),
    TeacherClassroomScreen(),
    TeacherPerformanceScreen(),
    TeacherMessageScreen(),

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
                  padding: EdgeInsets.all(width*0.005),
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/person3.png",
                            height: width * 0.044,
                            width: width * 0.044,
                          ),
                          SizedBox(width: width * 0.01),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              WantText(
                                  text: "Dr. Sarah Johnson",
                                  fontSize: width * 0.01,
                                  fontWeight: FontWeight.w600,
                                  textColor: colorBlack),

                              WantText(
                                  text: "Senior Mathematics Teacher",
                                  fontSize: width * 0.007,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorMainTheme),
                              WantText(
                                  text: "Class Teacher -  12th A",
                                  fontSize: width * 0.008,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorBlack),
                            ],
                          )
                        ],
                      ),

                      // SizedBox(width: width*0.63),

                      Spacer(),
                      // GestureDetector(onTap: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>DashNotificationScreen()));
                      // },
                      //     child: Image.asset("assets/icons/notification.png",width: width*0.02,)),


                      // SizedBox(width: width*0.02,),
                      Padding(
                        padding:EdgeInsets.only(right: width*0.016),
                        child: Image.asset("assets/icons/move.png",width: width*0.02,),
                      ),


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
                          icon: Image.asset("assets/icons/navlog.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navlog.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Log Book")),
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
                          icon: Image.asset("assets/icons/navperformance2.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorYellow, BlendMode.srcIn),
                            child: Image.asset("assets/icons/navperformance2.png", width: width*0.015, height: width*0.015),
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


