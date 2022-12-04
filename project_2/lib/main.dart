import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_2/Pages/Statistics.dart';
import 'package:project_2/Pages/Transformation.dart';

import 'Pages/interface.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
