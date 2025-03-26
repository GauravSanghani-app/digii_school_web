
import 'package:digi_school/utils/app_const.dart';
import 'package:digi_school/utils/custom_textformfield.dart';
import 'package:digi_school/utils/theam_manager.dart';
import 'package:digi_school/utils/want_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/custom_button.dart';
import 'package:intl/intl.dart';


class LibraryAddJournal extends StatefulWidget {
  @override
  _LibraryAddJournalState createState() => _LibraryAddJournalState();
}

class _LibraryAddJournalState extends State<LibraryAddJournal> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _publisherController = TextEditingController();
  final TextEditingController _volumeController = TextEditingController();
  final TextEditingController _issueController = TextEditingController();

  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        controller.text = DateFormat('MM/dd/yyyy').format(pickedDate);
      });
    }
  }


  String selectedValue = "";
  bool isDropdownOpen = false;


  final List<String> options = ["Science", "Mathematics"];



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
                  WantText(
                      text: "Add New Journal",
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
            
                        CustomTextFormField(hintText: "Journal Title", controller: _titleController,labelText: "Journal Title",),
                        SizedBox(height: height * 0.023),
            
                        CustomTextFormField(hintText: "Publisher", controller: _publisherController,labelText: "Publisher",),
                        SizedBox(height: height * 0.023),
            
                        CustomTextFormField(hintText: "Volume", controller: _volumeController,labelText: "Volume",),
                        SizedBox(height: height * 0.023),
                        CustomTextFormField(hintText: "Issue Number", controller: _issueController,labelText: "Issue Number",),
                        SizedBox(height: height * 0.023),
                        GestureDetector(
                          onTap: () =>
                              _selectDate(context, _dateController),
                          child: AbsorbPointer(
                            child: CustomTextFormField(
                                color: colorWhite,
                                suffixIcon: Icon(Icons.calendar_today),
                                readOnly: true,
                                labelText: "Publication Date",
                                hintText: 'mm/dd/yyyy',
                                controller: _dateController),
                          ),
                        ),
                        SizedBox(height: height * 0.023),
                        WantText(
                            text: "Subject Area",
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
                                  selectedValue.isEmpty ? "Subject Area" : selectedValue,
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
                        SizedBox(height: height * 0.023),
            
                        WantText(
                            text: "Upload Journal File",
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
            
                        CustomButton(Width: width, onTap: (){},label: "Add Journal",backgroundColor: colorGreenCalendar,borderColor: colorGreenCalendar,)
            
            
            
                      ],
                    ),
                  ),
            
            
            
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

