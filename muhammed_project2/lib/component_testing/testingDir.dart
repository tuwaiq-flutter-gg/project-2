import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muhammed_project2/component_testing/MyButtonTest.dart';
import 'package:muhammed_project2/component_testing/activityTest.dart';
import 'package:muhammed_project2/component_testing/appBarTest.dart';
import 'package:muhammed_project2/component_testing/backGroundIconTesting.dart';
import 'package:muhammed_project2/component_testing/reactanglTest.dart';
import 'package:muhammed_project2/component_testing/seperatedContainerTest.dart';

import '../views/send.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> appBarTesting()));
          }, child: Text("appBar test")),

            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> backgroundIconTesting()));
          }, child: Text("backgroundIconTesting")),


            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> MyButtonTest()));
          }, child: Text("Button testing")),


            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> reactangleTest()));
          }, child: Text("reactanglTest")),


            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> seperatedContainerTest()));
          }, child: Text("seperatedContainerTest")),

            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> activityTest()));
          }, child: Text("activityTest")),
        ],
      ),
    );
  }
}