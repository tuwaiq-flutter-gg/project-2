//import 'dart:js';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nama_project2/scr/HomePage.dart';
main(){

  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    HomePage());
  }
}