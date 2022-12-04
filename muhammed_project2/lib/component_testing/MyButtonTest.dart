import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muhammed_project2/components/MyButton.dart';

class MyButtonTest extends StatelessWidget {
  const MyButtonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyButton(
            height: MediaQuery.of(context).size.width /5.7,
            width: MediaQuery.of(context).size.width / 2.75,
            borderRadius: 14,
            buttonColor: Color(0xffF5F7FA),
            textWidget: Text("Withdraw", style: TextStyle(color: Color(0xff283B51), fontSize: 16),),
            buttonIcon: Image.asset("images/send-sqaure-2.png"),
          ),

             MyButton(
            height: MediaQuery.of(context).size.width /5.7,
            width: MediaQuery.of(context).size.width / 2.75,
            borderRadius: 14,
            buttonColor: Color(0xff283B51),
            textWidget: Text("Topup", style: TextStyle(color: Colors.white, fontSize: 16),),
            buttonIcon: Image.asset("images/receive-square-2.png"),
          ),
        ],
      ),
    );
  }
}
