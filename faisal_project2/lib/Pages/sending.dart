import 'package:faisal_project2/Compunets/Sending/sendingHome.dart';
import 'package:faisal_project2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sending extends StatelessWidget {
   Sending({super.key});
final TextEditingController control = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
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
      body: (sendingHome(control: control,)),
    ));
  }
}
