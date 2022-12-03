import 'package:flutter/material.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page1_HomePage/homepage.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page2_SendMoney/send_money.dart';
import 'package:sarahalgodah_project2/Screen_Components/Page3_Statistics/statistics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: 'HomePage',
       routes: {
        'HomePage':(context) => HomePage(),
        'SendMoney' : (context) => SendMoney(),
        'Statistics' :(context) => Statistics() ,
       },
    );
  }
}
