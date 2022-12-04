import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project22/Statistics.dart';
import 'package:project22/home.dart';
import 'package:project22/keyborad.dart';

import 'package:project22/sendMoney.dart';

import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: (home()),
    );
  }
}
