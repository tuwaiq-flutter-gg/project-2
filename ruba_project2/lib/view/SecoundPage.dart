import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_project2/Component/USDContainer.dart';
import 'package:ruba_project2/Component/secoundPageText.dart';
import 'package:ruba_project2/Component/textandimage.dart';
import 'package:ruba_project2/Component/twoBoxes.dart';

class SecoundPage extends StatelessWidget {
  const SecoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      body: Column(children: [
        SizedBox(height: 25,),
        twoBoxes(),
        SecoundPateText(),
        SizedBox(height: 10,),
        USDConponent(),
        SizedBox(height: 25,),
        textandimage(title: "Add note..",image: "images/pen.png"),
        





      ]
      ),
    );
  }
}