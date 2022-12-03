import 'package:flutter/material.dart';
import 'package:project2/src/SendMoney.dart';
import 'package:project2/src/Statistics.dart';
import 'package:project2/src/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        Send_money.screenRu: (context) => Send_money(),
        Statistics.screenSta: (context) => Statistics(),
      },
    );
  }
}
