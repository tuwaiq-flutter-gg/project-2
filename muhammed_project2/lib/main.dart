import 'package:flutter/material.dart';
import 'package:muhammed_project2/component_testing/MyButtonTest.dart';
import 'package:muhammed_project2/component_testing/activityTest.dart';
import 'package:muhammed_project2/component_testing/appBarTest.dart';
import 'package:muhammed_project2/component_testing/backGroundIconTesting.dart';
import 'package:muhammed_project2/component_testing/reactanglTest.dart';
import 'package:muhammed_project2/component_testing/seperatedContainerTest.dart';
import 'package:muhammed_project2/views/home.dart';
import 'package:muhammed_project2/views/send.dart';
import 'package:muhammed_project2/views/stats.dart';

main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage() ,
    );
  }
}