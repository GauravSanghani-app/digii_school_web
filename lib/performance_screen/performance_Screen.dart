
import 'package:digi_school/performance_screen/medals_achieved_screen.dart';
import 'package:digi_school/performance_screen/performance_widget.dart';
import 'package:digi_school/performance_screen/recent_achievement_screen.dart';
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class PerformanceScreen extends StatefulWidget {
  @override
  _PerformanceScreenState createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,


      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(width*0.011),
            child: Container(

              width: width*0.665,
              decoration: BoxDecoration(
                color: colorBox,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WantText(
                              fontFamily: "Roboto",
                              text: 'Medals Achieved',
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),
                          GestureDetector(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MedalsAchievedScreen()));
                          },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: width * 0.015,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.02),

                      Container(
                        width: width,
                        padding: EdgeInsets.all( width * 0.008),
                        decoration: BoxDecoration(
                          color: colorCustomButtonLabelWhite,
                          borderRadius: BorderRadius.circular(width*0.0138),
                          boxShadow: [
                            BoxShadow(
                              color: colorBoxshadow.withOpacity(0.1),
                              blurRadius: 2,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: width * 0.038,
                                  width: width * 0.055,
                                  child: Image.asset(
                                    "assets/icons/academic.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.014,
                                ),
                                WantText(
                                    text: "Academic Excellence",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: width * 0.038,
                                  width: width * 0.055,
                                  child: Image.asset(
                                    "assets/icons/sports.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.014,
                                ),
                                WantText(
                                    text: "Sports Star",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: width * 0.038,
                                  width: width * 0.055,
                                  child: Image.asset(
                                    "assets/icons/leadership.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.014,
                                ),
                                WantText(
                                    text: "Leadership",
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WantText(
                              fontFamily: "Roboto",
                              text: 'Recent Achievement',
                              fontSize: width * 0.0125,
                              fontWeight: FontWeight.w700,
                              textColor: colorBlack),
                          GestureDetector(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RecentAchievedScreen()));
                          },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: width * 0.015,
                            ),)
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        width: width,
                        padding: EdgeInsets.all( width * 0.008),
                        decoration: BoxDecoration(
                          color: colorCustomButtonLabelWhite,
                          borderRadius: BorderRadius.circular(width*0.0138),
                          boxShadow: [
                            BoxShadow(
                              color: colorBoxshadow.withOpacity(0.1),
                              blurRadius: 2,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: width * 0.025,
                              child: Image.asset(
                                "assets/icons/trophy.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.015
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WantText(
                                    fontFamily: "Roboto",
                                    text: 'First place in Science Fair Project',
                                    fontSize: width * 0.0097,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorDarkGreyText),
                                SizedBox(
                                  height: height * 0.01
                                ),
                                WantText(
                                    fontFamily: "Roboto",
                                    text: 'March 15, 2025',
                                    fontSize: width * 0.0083,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorGreyText),
                              ],
                            ),
                          ],
                        ),
                      ),




                      SizedBox(height: height * 0.02),
                      WantText(
                          fontFamily: "Roboto",
                          text: 'Academic Performance',
                          fontSize: width * 0.0125,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      SizedBox(height: height * 0.023),
                      // Container(
                      //   padding: EdgeInsets.all(12),
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(12),
                      //   ),
                      //   child: SizedBox(
                      //     height: height*0.407,
                      //     child: LineChart(
                      //       LineChartData(
                      //         gridData: FlGridData(
                      //           show: true,
                      //           drawVerticalLine: true,
                      //           drawHorizontalLine: true,
                      //           getDrawingHorizontalLine: (value) {
                      //             return FlLine(
                      //               color: Colors.grey.shade200,
                      //               strokeWidth: 1,
                      //               dashArray: [5, 5],
                      //             );
                      //           },
                      //           getDrawingVerticalLine: (value) {
                      //             return FlLine(
                      //               color: Colors.grey.shade200,
                      //               strokeWidth: 1,
                      //               dashArray: [5, 5],
                      //             );
                      //           },
                      //         ),
                      //         titlesData: FlTitlesData(
                      //
                      //           leftTitles: AxisTitles(
                      //             sideTitles: SideTitles(
                      //               showTitles: true,
                      //               interval: 20,
                      //               getTitlesWidget: (value, meta) {
                      //                 return Text(value.toInt().toString(), style: TextStyle(fontSize: 12));
                      //               },
                      //             ),
                      //           ),bottomTitles: AxisTitles(
                      //           sideTitles: SideTitles(
                      //             reservedSize: 35,
                      //             showTitles: true,
                      //             getTitlesWidget: (value, meta) {
                      //               List<String> subjects = ['Mathematics', 'Physics', 'Chemistry', 'English', 'Language', 'Biology'];
                      //               if (value.toInt() < subjects.length) {
                      //                 return Padding(
                      //                   padding: const EdgeInsets.only(top: 12.0), // Add space above the titles
                      //                   child: Transform.rotate(
                      //                     angle: -0.4,
                      //                     child: Text(
                      //                       subjects[value.toInt()],
                      //                       style: TextStyle(fontSize: 12),
                      //                     ),
                      //                   ),
                      //                 );
                      //               }
                      //               return const SizedBox();
                      //             },
                      //           ),
                      //         ),
                      //
                      //           topTitles: AxisTitles(
                      //             sideTitles: SideTitles(showTitles: false),
                      //           ),
                      //           rightTitles: AxisTitles(
                      //             sideTitles: SideTitles(showTitles: false),
                      //           ),
                      //         ),
                      //         minX: 0,
                      //         maxX: 5,
                      //         minY: 0,
                      //         maxY: 100,
                      //         borderData: FlBorderData(
                      //           show: true,
                      //           border: Border.all(color: Colors.grey.shade200, width: 1),
                      //         ),
                      //
                      //
                      //         lineBarsData: [
                      //           LineChartBarData(
                      //             spots: [
                      //               FlSpot(0, 90),
                      //               FlSpot(1, 70),
                      //               FlSpot(2, 40),
                      //               FlSpot(3, 60),
                      //               FlSpot(4, 80),
                      //               FlSpot(5, 65)
                      //             ],
                      //
                      //             isCurved: true,
                      //             color: Colors.blue,
                      //             belowBarData: BarAreaData(
                      //               show: true,
                      //               gradient: LinearGradient(
                      //                 colors: [
                      //                   Colors.blue.withOpacity(0.2),
                      //                   Colors.blue.withOpacity(0.0),
                      //                 ],
                      //                 begin: Alignment.topCenter,
                      //                 end: Alignment.bottomCenter,
                      //               ),
                      //             ),
                      //             dotData: FlDotData(
                      //               show: true,
                      //               getDotPainter: (spot, percent, barData, index) =>
                      //                   FlDotCirclePainter(
                      //                     radius: 4,
                      //                     color: Colors.blue,
                      //                     strokeWidth: 1.5,
                      //                     strokeColor: Colors.white,
                      //                   ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      SizedBox(
                        height: height * 0.023,
                      ),




                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.004,),
          PerformanceWidget(),
        ],
      ),
    );
  }

}
