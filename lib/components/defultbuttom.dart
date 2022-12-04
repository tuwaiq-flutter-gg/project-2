import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key, this.Buttinname, this.press});
  final String? Buttinname;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      child: TextButton(
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all<Color>(Color.fromARGB(255, 1, 12, 21)),
        ),
        onPressed: press as void Function()?,
        child: Text(
          Buttinname.toString(),
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 14),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade600,
              spreadRadius: 1,
              blurRadius: 15,
              offset: const Offset(0, 15))
        ],
        color: Color.fromARGB(255, 0, 0, 255),
      ),
    );
  }
}