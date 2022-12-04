// ignore_for_file: prefer_const_constructors

import 'package:faisal_project2/Compunets/Home/homepage.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: homepage(),
    )
    );
  }
}
