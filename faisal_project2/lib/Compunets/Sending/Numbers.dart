import 'package:faisal_project2/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class numbers extends StatelessWidget {
  const numbers({super.key, required this.number, required this.control});
  final String number;

  final TextEditingController control;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MediaQuery.of(context).size.width / 10),
          topRight: Radius.circular(MediaQuery.of(context).size.width / 10),
        ),
        color: Colors.white,
      ),
      child: TextButton(
        onPressed: () {
          control.text += number.toString();
        },
        child: Center(
          child: Text(
            number,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: dd,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
