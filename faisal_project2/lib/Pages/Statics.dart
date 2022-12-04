import 'package:faisal_project2/Compunets/Statics/homestatics.dart';
import 'package:faisal_project2/main.dart';
import 'package:flutter/material.dart';

class statics extends StatelessWidget {
  const statics({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text(
          "Stitics",
          style: TextStyle(color: Color(0xff283B51), fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        actions: [
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(shape: BoxShape.circle, color: dd),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz_sharp),
            ),
          )
        ],
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(shape: BoxShape.circle, color: dd),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),
      ),
      body: (homestatics()),
    ));
  }
}
