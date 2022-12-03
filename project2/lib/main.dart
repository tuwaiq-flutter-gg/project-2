import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Pages/HomePage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFFF5F7FA),
    ));
    return MaterialApp(
      home: Amjad_Project2(),
    );
  }
}
