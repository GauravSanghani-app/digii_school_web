import 'package:digi_school/auth_screen/signin_screen.dart';
import 'package:digi_school/utils/custom_dropdown.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_const.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController _uidController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

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
                    height: height * 0.093,
                    width: width * 0.059,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.fill,
                    )),

                WantText(
                  text: "Digi School",
                  fontSize: width*0.016,
                  fontWeight: FontWeight.w700,
                  textColor: colorBlack,
                ),
                SizedBox(height: height*0.035,),
                WantText(
                  text: "Find Your School",
                  fontSize: width*0.022,
                  fontWeight: FontWeight.w700,
                  textColor: colorDarkBlue,
                ),
                SizedBox(height: height*0.01),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    WantText(
                        text: "Already have an account? ",
                        fontSize: width * 0.0097,
                        fontWeight: FontWeight.w400,
                        textColor: colorDarkBlue),
                    GestureDetector(
                        onTap: () {
                        },
                        child: WantText(
                            text: "Login",
                            fontSize: width * 0.0097,
                            fontWeight: FontWeight.w500,
                            textColor: colorYellow)),
                  ],
                ),
                SizedBox(
                  height: height*0.035,
                ),
                CustomTextFormField(
                  hintText: 'School UID',
                  controller: _uidController,
                ),
                SizedBox(height: height*0.025,),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 2.0,
                        color: Color.fromRGBO(205, 204, 204, 1),
                        endIndent: 4.0,
                      ),
                    ),
                    WantText(
                      text: "OR",
                      fontSize: width * 0.0097,
                      fontWeight: FontWeight.w400,
                      textColor: Color.fromRGBO(205, 204, 204, 1),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 2.0,
                        color: Color.fromRGBO(205, 204, 204, 1),
                        indent: 4.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*0.01,),

                CustomTextFormField(
                  hintText: 'School Name',
                  controller: _nameController,
                ),
                SizedBox(height: height*0.025,),

                CustomDropdownField(
                  labelText: 'Location',
                  hintText: 'Select location',
                  leadingIcon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage('assets/icons/location.png'),
                      size: width * 0.015,
                      color: colorMainTheme,
                    ),
                  ),
                  trailingIcon: ImageIcon(
                    AssetImage('assets/icons/arrow_down.png'),
                    size:height * 0.016,
                    color: Color.fromRGBO(156, 163, 175, 1),
                  ),
                  items: const ["Chennai", "Mumbai", "Delhi"],
                  onSelected: (_) {},
                ),

                SizedBox(height: height*0.065,),

                Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));

                    },
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
                        child: WantText(text: "Continue",
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