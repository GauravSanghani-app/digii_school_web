
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/custom_button.dart';

class LibraryAddNewBook extends StatefulWidget {
  @override
  _LibraryAddNewBookState createState() => _LibraryAddNewBookState();
}

class _LibraryAddNewBookState extends State<LibraryAddNewBook> {
  final TextEditingController _publishController = TextEditingController();
  final TextEditingController _bookController = TextEditingController();
  final TextEditingController _copyController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _shelfController = TextEditingController();
  final TextEditingController _rowController = TextEditingController();
  final TextEditingController _isbnController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final TextEditingController _publishNameController = TextEditingController();
  final TextEditingController _editionController = TextEditingController();

  String selectedValue = "";
  bool isDropdownOpen = false;


  final List<String> options = ["Wearer", "Monitor"];

  String selectedLan = "";
  bool isDropdownOpen2 = false;


  final List<String> language = ["Hindi", "English"];


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
                          text: "Add New Book",
                          fontSize: width * 0.016,
                          fontWeight: FontWeight.w700,
                          textColor: colorBlack),
                      Row(
                        children: [

                          CustomButton(
                            Width: width*0.085,
                            onTap: (){},
                            paddingVertical: height*0.008,
                            backgroundColor: colorWhite,
                            borderColor: colorWhite,
                            labelWidget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.close,color: colorBlack,size: width*0.012,),
                                SizedBox(width: width*0.004,),
                                WantText(
                                    text: "Cancel",
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorBlack),
                              ],
                            ),
                          ),
                          SizedBox(width: width*0.010,),
            
                          CustomButton(
                            Width: width*0.095,
                            onTap: (){},
                            paddingVertical: height*0.008,
                            labelWidget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.check,color: colorWhite,size: width*0.012,),
                                SizedBox(width: width*0.004,),
                                WantText(
                                    text: "Save Book",
                                    fontSize: width * 0.011,
                                    fontWeight: FontWeight.w400,
                                    textColor: colorWhite),
                              ],
                            ),
                          )
                        ],
                      ),
            
                    ],
                  ),
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Book Cover",
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
                                            text: "Drag and drop or click to upload",
                                            fontSize: width * 0.0097,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorDarkGreyText),
            
                                        WantText(
                                            text: "PNG, JPG up to 5MB",
                                            fontSize: width * 0.0083,
                                            fontWeight: FontWeight.w400,
                                            textColor: colorGreyText),
            
                                      ],
                                    ),
            
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: width*0.011),
                            Expanded(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
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
                                              Icon(Icons.arrow_drop_down, color: colorBlack,size: width*0.018,),
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
                                    ],
                                  ),
                                  SizedBox(height: height*0.016),
                                  CustomTextFormField(hintText: "Enter publication year", controller: _publishController,labelText: "Publication Year",),
            
                                ],
                              ),
                            ),
                          ],
            
                        ),
            
                        SizedBox(height: height * 0.023),
            
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextFormField(hintText: "Enter book title", controller: _bookController,labelText: "Book Title")
                            ),
                            SizedBox(width: width*0.011),
                            Expanded(
                                child: CustomTextFormField(hintText: "Enter number of copies", controller: _copyController,labelText: "Number of Copies",)
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.023),
            
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextFormField(hintText: "Enter author name", controller: _nameController,labelText: "Author",)
                            ),
                            SizedBox(width: width*0.011),
                            Expanded(
                                child:   Row(
                                  children: [
                                    Expanded(
                                        child: CustomTextFormField(hintText: "Shelf", controller: _shelfController,labelText: "Location",)
                                    ),
                                    SizedBox(width: width*0.004),
                                    Expanded(
                                        child: Column(
                                          children: [
                                            SizedBox(height: height*0.028,),
                                            CustomTextFormField(hintText: "Row", controller: _rowController),
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.023),
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextFormField(hintText: "Enter ISBN number", controller: _isbnController,labelText: "ISBN",)
                            ),
                            SizedBox(width: width*0.011),
                            Expanded(
                                child: CustomTextFormField(hintText: "Enter book description", controller: _descriptionController,labelText: "Description",)
                            ),
                          ],
                        ),
            
            
                      ],
                    ),
                  ),
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
                        WantText(
                            text: "Additional Information",
                            fontSize: width * 0.0125,
                            fontWeight: FontWeight.w400,
                            textColor: colorBlack),
                        SizedBox(height: height*0.023),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: CustomTextFormField(hintText: "Enter publisher name", controller: _publishNameController,labelText: "Publisher",)),
                            SizedBox(width: width*0.011),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WantText(
                                      text: "Language",
                                      fontSize: width * 0.011,
                                      fontWeight: FontWeight.w500,
                                      textColor: colorTextFieldTitleBlack),
                                  SizedBox(height: height*0.016),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isDropdownOpen2 = !isDropdownOpen2;
                                      });
                                    },
                                    child: Container(
                                      height: height*0.056,
                                      padding: EdgeInsets.symmetric(vertical: width * 0.008, horizontal: height * 0.008),
                                      decoration: BoxDecoration(
                                        color: colorWhite,
                                        border: Border.all(width: 1,color: colorTanBackground),
                                        borderRadius: isDropdownOpen2
                                            ? BorderRadius.only(
                                          topLeft: Radius.circular(width * 0.008),
                                          topRight: Radius.circular(width * 0.008),
                                        ) : BorderRadius.all(Radius.circular(width * 0.008)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            selectedLan.isEmpty ? "Select language" : selectedLan,
                                            style: TextStyle(
                                              color: selectedLan.isEmpty ? colorHintText : colorBlack,
                                              fontSize: width * 0.0097,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Icon(Icons.arrow_drop_down, color: colorBlack,size: width*0.018,),
                                        ],
                                      ),
                                    ),
                                  ),

                                  if (isDropdownOpen2)
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
                                        children: language.map((option) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedLan = option;
                                                isDropdownOpen2 = false;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: language.last == option
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
                                ],
                              ),
                            ),
                            SizedBox(width: width*0.011),
                            Expanded(child: CustomTextFormField(hintText: "Enter edition", controller: _editionController,labelText: "Edition",)),

                          ],
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: height*0.04),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

