
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shatha_project2/view/HomePage.dart';

import 'package:shatha_project2/view/Statistics.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),);
  }
}

const lightBlue = Color(0xffDCE8F5);
const darkBlue = Color(0xff283B51);