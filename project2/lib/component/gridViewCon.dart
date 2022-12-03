import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConGridView extends StatelessWidget {
  ConGridView({super.key, this.number});
  String? number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      color: Color(0xffFFFFF),
      alignment: Alignment.center,
      child: Text(
        number!,
        style: TextStyle(fontSize: 35, color: Color(0xff283B51)),
      ),
    );
  }
}
