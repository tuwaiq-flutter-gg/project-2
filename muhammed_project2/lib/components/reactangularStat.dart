import 'dart:async';

import 'package:flutter/material.dart';
import 'package:muhammed_project2/components/backgrountIcon.dart';
class rectangularStat extends StatefulWidget {
  double? height, width;
  Color? backgroundColor;
  String? text;
   rectangularStat({super.key,this.text ,this.backgroundColor, this.height, this.width});

  @override
  State<rectangularStat> createState() => _rectangularStatState();
}

class _rectangularStatState extends State<rectangularStat> {
  @override
 
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        
        Container(
        
          margin: EdgeInsets.only(bottom: 10),
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(widget.width!/9.2),
          ),
        ),
        Text(widget.text.toString(), style: TextStyle(color: Color(0xff446388), fontSize: 14),),
      ],
    );
  }
}