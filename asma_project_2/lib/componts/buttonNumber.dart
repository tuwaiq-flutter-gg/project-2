import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BouttonNumber extends StatelessWidget {
  const BouttonNumber(
      {super.key, required this.controller, required this.number});

  final TextEditingController controller;
  final int number;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 30,
        child: Text(
          number.toString(),
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color(0xFF283B51)),
        ),
      ),
      onTap: () {
        controller.text += number.toString();
      },
    );
  }
}
