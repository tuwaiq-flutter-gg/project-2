import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muhammed_project2/components/activity.dart';

class activityTest extends StatelessWidget {
  const activityTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Activity(title: "Figma", subTitle: "12 August 2022", amount: 20.1,),
          Activity(),
          Activity()
        ],
      ),



    );
  }
}