
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/custom_button.dart';

class LibraryAddEbook extends StatefulWidget {
  @override
  _LibraryAddEbookState createState() => _LibraryAddEbookState();
}

class _LibraryAddEbookState extends State<LibraryAddEbook> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _isbnController = TextEditingController();



  String selectedValue = "";
  bool isDropdownOpen = false;


  final List<String> options = ["Academic", "xcgcv"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Padding(
        padding: EdgeInsets.all(width*0.008),
        child: Container(

          width: width,
          decoration: BoxDecoration(
            color: colorBox,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: width*0.011,horizontal: height*0.016),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WantText(
                    text: "Add New E-Book",
                    fontSize: width * 0.016,
                    fontWeight: FontWeight.w700,
                    textColor: colorBlack),
                SizedBox(height: height * 0.023),


                Container(
                  padding: EdgeInsets.all(width*0.008),

                  decoration: BoxDecoration(
                    color: colorWhite,

                    borderRadius: BorderRadius.circular(width * 0.006),
                    boxShadow: [
                      BoxShadow(
                        color: colorBoxShadow.withOpacity(0.1),
                        blurRadius: 2,
                        offset: Offset(0, 3),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CustomTextFormField(hintText: "Book Title", controller: _titleController,labelText: "Book Title",),
                      SizedBox(height: height * 0.023),

                      CustomTextFormField(hintText: "Author Name", controller: _authorController,labelText: "Author",),
                      SizedBox(height: height * 0.023),

                      CustomTextFormField(hintText: "Enter ISBN number", controller: _isbnController,labelText: "ISBN",),
                      SizedBox(height: height * 0.023),
                      WantText(
                          text: "Category",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w500,
                          textColor: colorTextFieldTitleBlack),
                      SizedBox(height: height*0.016),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isDropdownOpen = !isDropdownOpen;
                          });
                        },
                        child: Container(
                          height: height*0.056,
                          padding: EdgeInsets.symmetric(vertical: width * 0.008, horizontal: height * 0.008),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            border: Border.all(width: 1,color: colorTanBackground),
                            borderRadius: isDropdownOpen
                                ? BorderRadius.only(
                              topLeft: Radius.circular(width * 0.008),
                              topRight: Radius.circular(width * 0.008),
                            ) : BorderRadius.all(Radius.circular(width * 0.008)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedValue.isEmpty ? "Select category" : selectedValue,
                                style: TextStyle(
                                  color: selectedValue.isEmpty ? colorHintText : colorBlack,
                                  fontSize: width * 0.0097,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(Icons.arrow_drop_down, color: colorBlack,size: width*0.02,),
                            ],
                          ),
                        ),
                      ),

                      if (isDropdownOpen)
                        Container(
                          decoration: BoxDecoration(
                              color: colorWhite,
                              border: Border.all(color: colorTanBackground),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(width * 0.008),
                                bottomLeft: Radius.circular(width * 0.008),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: colorBoxShadow.withOpacity(0.1),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                ),
                              ]
                          ),
                          child: Column(
                            children: options.map((option) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedValue = option;
                                    isDropdownOpen = false;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: options.last == option
                                            ? Colors.transparent
                                            : Colors.grey.shade400,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(width * 0.008),
                                    child: Text(
                                      option,
                                      style: TextStyle(color: colorBlack, fontWeight: FontWeight.w400, fontSize: width * 0.0097),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      SizedBox(height: height * 0.023),

                      WantText(
                          text: "Upload E-Book File",
                          fontSize: width * 0.011,
                          fontWeight: FontWeight.w500,
                          textColor: colorTextFieldTitleBlack),
                      SizedBox(height: height * 0.016),

                      Container(
                        width: width,
                        padding: EdgeInsets.all(width * 0.011),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:colorTanBackground),
                          color:colorWhite,
                          borderRadius: BorderRadius.circular(width * 0.0083),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/libraryAdd.png',width: width*0.031,),

                            WantText(
                                text: "Drag and drop or click to upload PDF file",
                                fontSize: width * 0.0097,
                                fontWeight: FontWeight.w400,
                                textColor: colorDarkGreyText),

                          ],
                        ),

                      ),
                      SizedBox(height: height * 0.023),

                      CustomButton(Width: width, onTap: (){},label: "Add E-Book",)



                    ],
                  ),
                ),


                Spacer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

