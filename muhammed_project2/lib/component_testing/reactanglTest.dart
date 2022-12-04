import 'package:flutter/material.dart';
import 'package:muhammed_project2/components/reactangularStat.dart';
class reactangleTest extends StatefulWidget {
  const reactangleTest({super.key});

  @override
  State<reactangleTest> createState() => _reactangleTestState();
}

class _reactangleTestState extends State<reactangleTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          rectangularStat(backgroundColor: Color(0xffD3DDE9), height: 107, width: 38, text: "Wed",),
          rectangularStat(backgroundColor: Color(0xff283B51), height: 197, width: 38, text: "Thu",),

        ],
      ),
    );
  }
}