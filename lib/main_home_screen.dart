import 'package:digi_school/auth_screen/signup_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: colorWhite,
              image: DecorationImage(
                  image: AssetImage("assets/images/Background.png"),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding:EdgeInsets.only(top: height*0.012,left: width*0.03,right: width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: height * 0.093,
                          width: width * 0.059,
                          child: Image.asset(
                            'assets/images/logo.png',
                            fit: BoxFit.fill,
                          )),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                        },
                        child: Container(
                          height: width*0.0326,
                          width: width*0.147,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(124, 187, 228, 1),
                                Color.fromRGBO(246, 173, 43, 1),
                                Color.fromRGBO(124, 187, 228, 1),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(34),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/login.png",
                                height: width*0.013,),
                              SizedBox(width: width*0.008,),
                              WantText(text: "Login/Register", fontSize: width*0.0125, fontWeight: FontWeight.w500, textColor: colorWhite)

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  WantText(
                    text: "Digi School",
                    fontSize: width*0.016,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack,
                  ),
                  SizedBox(
                    height: height*0.07,
                  ),
                  Image.asset("assets/images/text.png",width:width*0.364),
                  SizedBox(
                    height: height*0.02,
                  ),
                  WantText(
                      text: "Empowering Education with Smart & Seamless School \nManagement",
                      fontSize: width*0.0125,
                      fontWeight: FontWeight.w400,
                      textColor: colorDarkBlue,
                    textOverflow: TextOverflow.visible,
                  ),
                  SizedBox(height: height*0.037,),

                  Container(
                    height: width*0.046,
                    width: width*0.340,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(124, 187, 228, 1),
                          Color.fromRGBO(246, 173, 43, 1),
                          Color.fromRGBO(124, 187, 228, 1),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/buttonicon.png",
                          height: width*0.013,),
                        SizedBox(width: width*0.008,),
                        WantText(text: "Join Us Today", fontSize: width*0.0125, fontWeight: FontWeight.w500, textColor: colorGreyTexts)
                        
                      ],
                    ),
                  ),
                  

                ],
              ),
            )));
  }
}
