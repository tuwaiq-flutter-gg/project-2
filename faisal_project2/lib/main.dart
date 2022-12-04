// ignore_for_file: prefer_const_constructors

import 'package:faisal_project2/Pages/Home.dart';
import 'package:flutter/material.dart';
                       
Color bb = Color(0xff283B51);
Color dd = Color(0xffD0DAE6);

void main() {
  runApp(const Faisal_Project2());
}

class Faisal_Project2 extends StatelessWidget {
  const Faisal_Project2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: (Home()),
    );
  }
}
