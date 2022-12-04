import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/Component/List.dart';
import 'package:ruba_project2/Component/Smallbox.dart';
import 'package:ruba_project2/Component/boxes.dart';
import 'package:ruba_project2/Component/cyrcleComtainer.dart';
import 'package:ruba_project2/Component/textTwoSide.dart';
import 'package:ruba_project2/Component/twoBoxes.dart';

import '../Component/bigandCenterContaineer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      body: ListView(children: [
        SizedBox(height: 10,),
             //frist function call in boxex component that use to display text in left and image to right
     TitleAndBox(),//use in frist page
            //twoBoxes(),//use in secound and third page
     BigandCenter(title: "Main account",title1: "\$154.723.00"),
            //space betwwen 2 container

    TextTwoSide(title: "Recent Activity",title1: "See All"),
     ListApp(title: "Figma",date: "12 August 2022", price: "\$20.1",image: "images/photo.png"),
     SizedBox(height: 10,),
     ListApp(title: "Nettflix",date: "07 August 2022", price: "\$14.1",image: "images/photo.png"),
     SizedBox(height: 10,),
     TextTwoSide(title: "Recent Send Money",title1: ""),
     CycleList(),   

      ]
      ),
    );
  }
}