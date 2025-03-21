
import 'package:digi_school/library_portal/library_book_screen.dart';
import 'package:digi_school/library_portal/library_dashboard_screen.dart';
import 'package:digi_school/library_portal/library_digital_screen.dart';
import 'package:digi_school/library_portal/library_issue_screen.dart';
import 'package:digi_school/library_portal/library_notification_screen.dart';
import 'package:digi_school/library_portal/library_report_screen.dart';
import 'package:digi_school/library_portal/library_user_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LibraryNavigationScreen extends StatefulWidget {
  @override
  _LibraryNavigationScreenState createState() => _LibraryNavigationScreenState();
}

class _LibraryNavigationScreenState extends State<LibraryNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    LibraryDashboardScreen(),
    LibraryBookScreen(),
    LibraryIssueScreen(),
    LibraryUserScreen(),
    LibraryReportScreen(),
    LibraryDigitalScreen(),
    LibraryNotificationScreen(),

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: height * 0.054,
                          width: width * 0.097,
                          child: Image.asset(
                            'assets/images/Logologin.png',
                            fit: BoxFit.fill,
                          )),


                      Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(right: width*0.008),
                        child: Row(

                          children: [
                            Image.asset(
                              "assets/images/parentimag.png",
                              height: width * 0.037,
                              width: width * 0.037,
                            ),
                            SizedBox(width: width * 0.01),
                            WantText(
                                text: "Sarah Johnson",
                                fontSize: width * 0.01,
                                fontWeight: FontWeight.w600,
                                textColor: colorBlack)
                          ],
                        ),
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
                        color: colorBlack,
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
                            child: Image.asset("assets/icons/teacherNav1.png", width: width*0.015, height: width*0.015),
                          ),
                          selectedIcon: Padding(
                            padding: EdgeInsets.only(top: height * 0.035),
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(colorBlack, BlendMode.srcIn),
                              child: Image.asset("assets/icons/teacherNav1.png", width: width*0.015, height: width*0.015),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Dashboard")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/teacherNav2.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorBlack, BlendMode.srcIn),
                            child: Image.asset("assets/icons/teacherNav2.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("        Book \nManagement")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/teacherNav3.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorBlack, BlendMode.srcIn),
                            child: Image.asset("assets/icons/teacherNav3.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Issue/Return")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/teacherNav4.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorBlack, BlendMode.srcIn),
                            child: Image.asset("assets/icons/teacherNav4.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("User and \nborrowing \nhistory ")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/teacherNav5.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorBlack, BlendMode.srcIn),
                            child: Image.asset("assets/icons/teacherNav5.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("  Reports \n&Analytics")),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/teacherNav6.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorBlack, BlendMode.srcIn),
                            child: Image.asset("assets/icons/teacherNav6.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text(" Digital \nLibrary")),
                          ),
                        ),

                        NavigationRailDestination(
                          icon: Image.asset("assets/icons/teacherNav7.png", width: width*0.015, height: width*0.015),
                          selectedIcon: ColorFiltered(
                            colorFilter: ColorFilter.mode(colorBlack, BlendMode.srcIn),
                            child: Image.asset("assets/icons/teacherNav7.png", width: width*0.015, height: width*0.015),
                          ),
                          label: Padding(
                            padding: EdgeInsets.only(bottom: height * 0.015),
                            child: FittedBox(child: Text("Notification")),
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


