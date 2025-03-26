import 'package:digi_school/accounts_portal/accounts_navigation_page/accounts_navigation_page.dart';
import 'package:digi_school/dashboard/navigation_page/navigation_screen.dart';
import 'package:digi_school/exam_controller_portal/exam_navigation_page/exam_navigation_screen.dart';
import 'package:digi_school/library_portal/library_navigation_page/library_navigation_screen.dart';
import 'package:digi_school/teacher_portal/teacher_navigation_page/teacher_navigation_screen.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_const.dart';
import '../student_portal/navigation_page/navigation_page_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void _validateAndNavigate() {
    String phoneNumber = _phoneController.text.trim().toLowerCase();
    String password = _passwordController.text.trim();
    if (phoneNumber.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter your phoneNumber!",)),
      );
      return;
    }

    if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter your password!",)),
      );
      return;
    }

    if (phoneNumber == "9999999999" ) {
      //student portal
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NavigationScreen()));
    } else if (phoneNumber == "8888888888") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DashNavigationScreen()));
    }else if (phoneNumber == "7777777777") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TeacherNavigationScreen()));
    } else if (phoneNumber == "6666666666") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LibraryNavigationScreen()));
    }else if (phoneNumber == "5555555555") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ExamNavigationScreen()));
    }else if (phoneNumber == "4444444444") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AccountsNavigationPage()));
    }
    if (phoneNumber.length != 10) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Phone number must be 10 digits'),
        backgroundColor: colorPinkText,
      ));
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMainTheme,
      body:
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: colorWhite,
          image: DecorationImage(
              image: AssetImage("assets/images/loginpage.png"),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding:EdgeInsets.only(top: height*0.120,left: width*0.63,right: width*0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: height * 0.054,
                  width: width * 0.114,
                  child: Image.asset(
                    'assets/images/Logologin.png',
                    fit: BoxFit.fill,
                  )),

              SizedBox(height: height*0.05),
              WantText(
                text: "Welcome Back",
                fontSize: width*0.022,
                fontWeight: FontWeight.w700,
                textColor: colorDarkBlue,
              ),
              SizedBox(height: height*0.01),

              SizedBox(
                height: height*0.035,
              ),
              CustomTextFormField(
                labelText: 'Phone Number',
                hintText: '+91',
                prefixIcon: Icon(
                  Icons.phone,
                  color: Color.fromRGBO(156, 163, 175, 1),
                  size: width * 0.011,
                ),
                keyboardType: TextInputType.phone,
                controller: _phoneController,
              ),
              SizedBox(height: height*0.03,),


              CustomTextFormField(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromRGBO(156, 163, 175, 1),
                  size: width * 0.011,
                ),
                controller: _passwordController,
              ),
              SizedBox(height: height*0.05),

              Row(
                children: [

                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                    VisualDensity(horizontal: -4, vertical: -4),
                    value: false,
                    side: BorderSide(width: 0.5),
                    onChanged: (_) {},
                  ),
                  SizedBox(
                    width: width * 0.008,
                  ),
                  WantText(
                      text: "Remember me",
                      fontSize: width * 0.0097,
                      fontWeight: FontWeight.w400,
                      textColor: colorGreyTextLogIn),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                    },
                    child: WantText(
                        text: "Forgot password?",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w500,
                        textColor: colorCustomButton),
                  ),
                ],
              ),

              SizedBox(height: height*0.08,),

              Center(
                child: GestureDetector(
                  onTap: () => _validateAndNavigate(),

                  child: Container(
                    height: width*0.035,
                    width: width*0.125,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(127, 189, 228, 0.6),
                          Color.fromRGBO(246, 173, 43, 1),
                          Color.fromRGBO(127, 189, 228, 0.82),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Center(
                      child: WantText(text: "Sign In",
                          fontSize: width*0.0111, fontWeight: FontWeight.w500, textColor: colorGreyTexts),
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}