import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ruba_project2/Component/TextContainer.dart';
import 'package:ruba_project2/Component/TwoLargCon.dart';
import 'package:ruba_project2/Component/Twoboxesandtext.dart';



class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      body: ListView(children: [
        SizedBox(height: 10,),
      twoBoxesandText(title: "Statistics"),
      SizedBox(height: 10,),
      TextContainer(title: "Your Balance",title1: "\$154.723.00"),
      

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TwoLargCon(price: "\$25.245",image: "images/bottom-right.png",title: "Income"),
          TwoLargCon(price: "\$47.51",image: "images/trend.png",title: "Expenditure"),
      ],

      ),

      ],
      ),
    );
  }
}