import 'package:flutter/material.dart';

class YourBalance extends StatelessWidget {
  const YourBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      height: 70,
      width: 279,
      color: Color(0xFFF5F7FA),
      alignment: Alignment.center,
      child: Row(
        children: [
          Text(
            "Your Balnce",
            style: TextStyle(color: Color(0xFF446388), fontSize: 14),
          ),
          SizedBox(
            width: 20,
          ),
          Text("\$123578.98",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff283B51)))
        ],
      ),
    );
  }
}
