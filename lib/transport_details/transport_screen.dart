
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/footer_widget.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TransportScreen extends StatefulWidget {
  @override
  _TransportScreenState createState() => _TransportScreenState();
}

class _TransportScreenState extends State<TransportScreen> {

  final Map<String, String> _details = {
    "Route Name": "Route 5A (Green Line)",
    "Pick-up Location": "Sunrise Apartments Gate",
    "Drop-off Location": "Podar School, Main Gate",
    "Pick-up Time": "7:15 am",
    "Drop-off Time": "4:30 pm",
    "Driver's Name": "Mr. Rajesh Kumar",
    "Driver's Contact": "+91-98765-43210",
    "Vehicle Number": "TN-09-AB-1234",
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


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
                  padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.008),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      WantText(text: "Live Tracking", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height * 0.02),
                      WantText(text: "Current Transportation Details", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                      SizedBox(height: height * 0.02),

                      Center(
                        child: SizedBox(
                          width: width*0.28,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: height * 0.005),
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.0205,
                                  vertical: height * 0.0099,
                                ),
                                decoration: BoxDecoration(
                                  color: colorMainTheme,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(width * 0.006),
                                    topRight: Radius.circular(width * 0.006),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Field",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w600,
                                          color: colorWhite,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        "Details",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w600,
                                          color: colorWhite,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ...List.generate(
                                _details.entries.length,
                                    (index) {
                                  final detail = _details.entries.elementAt(index);

                                  return Container(
                                    margin: EdgeInsets.only(bottom: height * 0.005),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.0205,
                                      vertical: height * 0.0099,
                                    ),
                                    decoration: BoxDecoration(
                                      color: colorWhite,
                                      borderRadius: index == _details.entries.length - 1
                                          ? BorderRadius.only(
                                        bottomLeft: Radius.circular(width * 0.006),
                                        bottomRight: Radius.circular(width * 0.006),
                                      )
                                          : BorderRadius.zero,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            detail.key,
                                            textAlign: TextAlign.right,
                                            style: GoogleFonts.roboto(
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              color: colorBlack,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Text(
                                            detail.value,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.roboto(
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w400,
                                              color: colorBlack,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      )



                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: width*0.004,),
            Container(
              height: height,
              width: width*0.24,
              decoration: BoxDecoration(
                color: colorWhite,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(width*0.008),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.023),
                        WantText(text: "Contact Details", fontSize: width*0.0125, fontWeight: FontWeight.w700, textColor: colorBlack),
                        SizedBox(height: height * 0.023),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(width*0.005),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color.fromRGBO(24, 144, 255, 0.1), Color.fromRGBO(24, 144, 255, 0.66)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            border: Border(
                              left: BorderSide(color: Color.fromRGBO(24, 144, 255, 1), width: 4),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              WantText(
                                  fontFamily: "Roboto",
                                  textOverflow: TextOverflow.visible,
                                  text: "For route details or transportation queries, please contact:",
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w500,
                                  textColor: colorBlack),
                              SizedBox(height: height*0.01),
                              Row(
                                children: [
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: "•",
                                      fontSize: width * 0.015,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  SizedBox(width: width * 0.006),
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: "Transportation Desk: +91-12345-67890",
                                      fontSize: width * 0.0097,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorBlack),
                                ],
                              ),
                              Row(
                                children: [
                                  WantText(
                                      fontFamily: "Roboto",
                                      text: "•",
                                      fontSize: width * 0.015,
                                      fontWeight: FontWeight.w400,
                                      textColor: colorDarkGreyText),
                                  SizedBox(width: width * 0.006),
                                  Row(
                                    children: [
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: "Email:",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorBlack),
                                      WantText(
                                          fontFamily: "Roboto",
                                          text: " transport@digischool.com",
                                          fontSize: width * 0.0097,
                                          fontWeight: FontWeight.w500,
                                          textColor: colorMainTheme),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),




                      ],
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

