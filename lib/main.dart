import 'package:digi_school/auth_screen/main_home_screen.dart';
import 'package:digi_school/exam_controller_portal/exam_navigation_page/exam_navigation_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp(

        title: 'DigiiSchool', debugShowCheckedModeBanner: false,

        home: ExamNavigationScreen()

    );
  }
}