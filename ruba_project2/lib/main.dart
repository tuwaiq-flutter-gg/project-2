import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ruba_project2/view/HomePage.dart';
import 'package:ruba_project2/view/SecoundPage.dart';
import 'package:ruba_project2/view/ThirdPage.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       //home: HomePage(),
    home: SecoundPage(),

    );
  }
}