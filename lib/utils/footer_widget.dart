import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      alignment: Alignment.centerRight,
      color: Colors.grey[200], // Light Background Color (adjust if needed)
      child: Text(
        "Powered by Varsai Tech Solution, E-2024",
        style: TextStyle(fontSize: 12, color: Colors.black54),
      ),
    );
  }
}
